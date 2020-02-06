<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" label-width="68px">
      <el-form-item label="文件名称" prop="fileName">
        <el-input
          v-model="queryParams.fileName"
          placeholder="请输入文件名称"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
          @change="handleQuery"
        />
      </el-form-item>
      <el-form-item label="文件后缀" prop="suffix">
        <el-select v-model="queryParams.suffix" placeholder="请选择文件后缀" clearable size="small">
          <el-option v-for="suffix in suffixOptions"
                     :key="suffix.suffixValue"
                     :label="suffix.suffixLabel"
                     :value="suffix.suffixValue"/>
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">

      <el-col :span="1.5">
        <el-button
          type="primary"
          icon="el-icon-plus"
          size="mini"
          @click="handleUpload"
          v-hasPermi="['system:attachments:upload']"
        >上传
        </el-button>
      </el-col>

    </el-row>

    <el-row>
      <div v-for="(item,index) in attachmentsList"
           :key="index"
      >
        <el-col :span="4">
          <div class="card" @click="showpanel(item)" v-hasPermi="['system:attachments:edit']">
            <el-image :src="item.filePath" class="image"></el-image>
            <el-tooltip effect="dark" :content="item.fileName" placement="top">
              <span class="imgname">{{item.fileName.substr(0,15)+'...'}}</span>
            </el-tooltip>
          </div>
        </el-col>
      </div>
    </el-row>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <el-dialog v-el-drag-dialog :title="upload.title" :visible.sync="upload.open" width="400px">
      <el-upload
        ref="upload"
        :limit="5"
        accept="image/png,image/gif,image/jpg,image/jpeg"
        :before-upload="onBeforeUpload"
        :headers="upload.headers"
        :action="upload.url"
        :disabled="upload.isUploading"
        :on-progress="handleFileUploadProgress"
        :on-success="handleFileSuccess"
        :auto-upload="false"
        drag
        multiple
      >
        <i class="el-icon-upload"></i>
        <div class="el-upload__text">
          将文件拖到此处，或
          <em>点击上传</em>
        </div>
        <div class="el-upload__tip" style="color:red" slot="tip">提示：每次仅允许上传5个文件！</div>
      </el-upload>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitFile">确 定</el-button>
        <el-button @click="upload.open = false">取 消</el-button>
      </div>
    </el-dialog>

    <div ref="rightPanel" v-bind:class="{show:show}" class="rightPanel-container">
      <div class="rightPanel-background" />
      <div class="rightPanel">
        <div class="rightPanel-items">
          <div class="right_top">
            <div class="att_title">
              <div class="title_content">
                附件详情
              </div>
            </div>
          </div>
          <div class="rightbody">
            <el-form ref="form" :model="form" :rules="rules">
              <div class="attimg">
                <el-image :src="form.filePath"/>
              </div>
              <div class="attinfo">
                <div class="label">附件名：<span style="cursor: pointer;color: #1890ff" @click="showinput">
                    <svg-icon iconClass="edit"></svg-icon>
                  </span></div>
                <div class="content" v-if="isActive">{{form.fileName}}</div>
                <div v-else-if="!isActive"><el-input @blur="nofocus" v-model="form.fileName" size="mini"></el-input></div>
              </div>
              <div class="attinfo">
                <div class="label">附件类型：</div>
                <div class="content" >{{form.mediaType}}</div>
              </div>
              <div class="attinfo">
                <div class="label">附件大小：</div>
                <div class="content" >{{form.fileSize}} KB</div>
              </div>
              <div class="attinfo">
                <div class="label">上传日期：</div>
                <div class="content" >{{form.createTime}}</div>
              </div>
              <div class="attinfo">
                <div class="label">地址链接：<span style="cursor: pointer;color: #1890ff" @click="copy(form.filePath)">
                    <svg-icon iconClass="copy"></svg-icon>
                  </span>
                </div>
                <div class="content">{{form.filePath}}</div>
              </div>
            </el-form>
          </div>
          <div class="right-footer">
            <el-button type="danger" @click="handleDelete(form)" v-hasPermi="['system:attachments:remove']">删 除</el-button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import { addClass, removeClass } from '@/utils'
  import {
    listAttachments,
    getAttachments,
    delAttachments,
    addAttachments,
    updateAttachments,
    exportAttachments
  } from '@/api/system/attachments'
  import { getToken } from '@/utils/auth'
  import elDragDialog from '@/directive/el-drag-dialog'

  export default {
    directives: { elDragDialog },
    data() {
      return {
        // 遮罩层
        loading: true,
        show: false,
        isActive : true,
        // 选中数组
        ids: [],
        //后缀
        suffixOptions: [
          {
            suffixLabel: 'jpg',
            suffixValue: 'jpg'
          },
          {
            suffixLabel: 'jpeg',
            suffixValue: 'jpeg'
          },
          {
            suffixLabel: 'png',
            suffixValue: 'png'
          },
          {
            suffixLabel: 'gif',
            suffixValue: 'gif'
          }
        ],
        // 非单个禁用
        single: true,
        // 非多个禁用
        multiple: true,
        // 总条数
        total: 0,
        // 附件表格数据
        attachmentsList: [],
        // 弹出层标题
        title: '',
        // 是否显示弹出层
        open: false,
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          fileName: undefined,
          suffix: undefined
        },
        upload: {
          // 是否显示弹出层（用户导入）
          open: false,
          // 弹出层标题（用户导入）
          title: '',
          // 是否禁用上传
          isUploading: false,
          // 设置上传的请求头部
          headers: { Authorization: 'Bearer ' + getToken() },
          // 上传的地址
          url: process.env.VUE_APP_BASE_API + '/system/attachments/upload'
        },
        // 表单参数
        form: {},
        // 表单校验
        rules: {}
      }
    },
    watch: {
      show(value) {
        if (value) {
          addClass(document.body, 'showRightPanel')
          setTimeout(()=>{
            this.addEventClick()
          },800)
        } else {
          removeClass(document.body, 'showRightPanel')
        }
      }

    },
    mounted() {
      this.insertToBody()
    },
    beforeDestroy() {
      const elx = this.$refs.rightPanel
      elx.remove()
    },
    created() {
      this.getList()
    },
    methods: {
      nofocus(){
        this.isActive = true
        this.$refs['form'].validate(valid => {
          if (valid) {
            if (this.form.id != undefined) {
              updateAttachments(this.form).then(response => {
                if (response.code === 200) {
                  this.msgSuccess('修改成功')
                  this.open = false
                  this.getList()
                } else {
                  this.msgError(response.msg)
                }
              })
            }
          }
        })
      },
      showpanel(item) {
        this.show = true
        this.reset()
        const id = item.id
        getAttachments(id).then(response => {
          this.form = response.data
          this.open = true
          this.title = '修改附件'
        })
      },
      addEventClick() {
        window.addEventListener('click', this.closeSidebar)
      },
      closeSidebar(evt) {
        const parent = evt.target.closest('.rightPanel')
        if (!parent) {
          this.show = false
          this.reset();
          window.removeEventListener('click', this.closeSidebar)
        }
      },
      insertToBody() {
        const elx = this.$refs.rightPanel
        const body = document.querySelector('body')
        body.insertBefore(elx, body.firstChild)
      },
      showinput(){
        this.isActive = false
      },
      copy(copyInfo) {
        return new Promise((resolve, reject) => {
          let copyUrl = document.createElement("input"); //创建一个input框获取需要复制的文本内容
          copyUrl.value = copyInfo;
          let appDiv = document.getElementById('app');
          appDiv.appendChild(copyUrl);
          copyUrl.select();
          document.execCommand("Copy");
          copyUrl.remove()
          resolve(true);
          this.msgSuccess('复制成功')
        })
      },
      /** 查询附件列表 */
      getList() {
        this.loading = true
        listAttachments(this.queryParams).then(response => {
          this.attachmentsList = response.rows
          this.total = response.total
          this.loading = false
        })
      },

      // 表单重置
      reset() {
        this.form = {
          id: undefined,
          fileName: undefined,
          filePath: undefined,
          fileSize: undefined,
          mediaType: undefined,
          suffix: undefined,
          createBy: undefined,
          createTime: undefined,
          updateBy: undefined,
          updateTime: undefined
        }
        this.resetForm('form')
      },

      /** 搜索按钮操作 */
      handleQuery() {
        this.queryParams.pageNum = 1
        this.getList()
      },
      /** 重置按钮操作 */
      resetQuery() {
        this.resetForm('queryForm')
        this.handleQuery()
      },

      handleUpload() {
        this.upload.title = '上传附件'
        this.upload.open = true
      },
      onBeforeUpload(file) {
        const isIMAGE = file.type === 'image/jpeg' || 'image/jpg' || 'image/png' || 'image/gif'
        const isLt1M = file.size / 1024 / 1024 < 10
        if (!isIMAGE) {
          this.msgError('上传文件只能是图片格式!')
        }
        if (!isLt1M) {
          this.msgError('上传文件大小不能超过 10MB!')
        }
        return isIMAGE && isLt1M
      },
      // 提交上传文件
      submitFile() {
        this.$refs.upload.submit()
      },

      // 文件上传中处理
      handleFileUploadProgress(event, file, fileList) {
        this.upload.isUploading = true
      },
      // 文件上传成功处理
      handleFileSuccess(response, file, fileList) {
        this.upload.open = false
        this.upload.isUploading = false
        this.$refs.upload.clearFiles()
        this.$alert(response.msg, '上传结果', { dangerouslyUseHTMLString: true })
        this.getList()
      },

      /** 修改按钮操作 */
      handleUpdate(row) {
        this.reset()
        const id = row.id
        getAttachments(id).then(response => {
          this.form = response.data
          this.open = true
          this.title = '修改附件'
        })
      },
      /** 提交按钮 */
      submitForm: function() {
        this.$refs['form'].validate(valid => {
          if (valid) {
            if (this.form.id != undefined) {
              updateAttachments(this.form).then(response => {
                if (response.code === 200) {
                  this.msgSuccess('修改成功')
                  this.open = false
                  this.getList()
                } else {
                  this.msgError(response.msg)
                }
              })
            } else {
              addAttachments(this.form).then(response => {
                if (response.code === 200) {
                  this.msgSuccess('新增成功')
                  this.open = false
                  this.getList()
                } else {
                  this.msgError(response.msg)
                }
              })
            }
          }
        })
      },
      /** 删除按钮操作 */
      handleDelete(form) {
        this.show = false
        const id = form.id
        const filename = form.fileName
        this.$confirm('是否确认删除附件名为"' + filename + '"的附件?', '警告', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(function() {
          return delAttachments(id)
        }).then(() => {
          this.getList()
          this.msgSuccess('删除成功')
        }).catch(function() {
        })
      }

    }

  }
</script>

<style lang="scss" scoped>
  .card {
    width: 170px;
    height: 150px;
    background-color: #304156;
    cursor: pointer;
    margin-top: 20px;
  }

  .image {
    width: 170px;
    height: 120px;
  }

  .imgname {
    width: 170px;
    display: inline-block;
    text-align: center;
    font-size: 12px;
    font-family: "Microsoft YaHei";
    color: #fff;
  }


  /**
  详情面板
   */
  .rightPanel-background {
    position: fixed;
    top: 0;
    left: 0;
    opacity: 0;
    transition: opacity .3s cubic-bezier(.7, .3, .1, 1);
    background: rgba(0, 0, 0, .2);
    z-index: -1;
  }

  .rightPanel {
    width: 100%;
    max-width: 460px;
    height: 100vh;
    position: fixed;
    top: 0;
    right: 0;
    box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, .05);
    transition: all .25s cubic-bezier(.7, .3, .1, 1);
    transform: translate(100%);
    background: #fff;
    z-index: 40000;
  }

  .show {
    transition: all .3s cubic-bezier(.7, .3, .1, 1);

    .rightPanel-background {
      z-index: 20000;
      opacity: 1;
      width: 100%;
      height: 100%;
    }

    .rightPanel {
      overflow-y:auto;
      overflow-x: hidden;
      transform: translate(0);
    }
  }

  .right_top{
    display: flex;
    border-bottom: #d0d0d0 1px solid;
  }
  .att_title{
    width: 404px;
    height: 56px;
  }
  .title_content{
    padding-left: 25px;
    line-height: 56px;
    font-size: 16px;
    font-width: 600;
    font-family: "Microsoft YaHei";
  }
  .btn-close{
    width: 56px;
    height: 56px;
    text-align: center;
    cursor: pointer;
    i{
      font-size: 20px;
      line-height: 56px;
    }
  }
  .rightbody{
    padding: 25px;
  }
  .attimg{
    padding-bottom: 20px;
    border-bottom: #d0d0d0 1px solid;
  }
  .attinfo{
    padding: 25px 0 15px 0;
    border-bottom: #d0d0d0 1px solid;
    .label{
      font-size: 15px;
      color: #5a5e66;
    }
    .content{
      word-wrap:break-word;
      word-break:break-all;
      margin-top: 10px;
      font-size: 14px;
      color: rgba(142, 142, 142, 0.76);
    }
  }
  .right-footer{
    float: right;
    margin: 0 25px 20px 0;
  }

</style>
