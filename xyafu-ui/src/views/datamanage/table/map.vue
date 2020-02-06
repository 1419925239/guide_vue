<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" label-width="68px">
      <el-form-item label="地点名称" prop="title">
        <el-input
          v-model="queryParams.title"
          placeholder="请输入地点名称"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="分类" prop="category">
        <el-select v-model="queryParams.category" placeholder="请选择分类" clearable size="small">
          <el-option
            v-for="cate in categoryOptions"
            :key="cate.category"
            :label="cate.category"
            :value="cate.category"
          />
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
          @click="handleAdd"
          v-hasPermi="['wxapp:map:add']"
        >新增
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['wxapp:map:edit']"
        >修改
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['wxapp:map:remove']"
        >删除
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['wxapp:map:export']"
        >导出
        </el-button>
      </el-col>
    </el-row>

    <el-table v-loading="loading" :data="mapList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="50" align="left"/>
      <el-table-column label="地点id" align="left" prop="id" show-overflow-tooltip/>
      <el-table-column label="地点名称" align="left" prop="title" show-overflow-tooltip/>
      <el-table-column label="地点介绍" align="left" prop="description" show-tooltip-when-overflow/>
      <el-table-column label="地点logo" align="left" prop="logo" show-overflow-tooltip/>
      <el-table-column label="地点图片" align="left" prop="images" show-tooltip-when-overflow/>
      <el-table-column label="经度" align="left" prop="longitude" show-overflow-tooltip/>
      <el-table-column label="纬度" align="left" prop="latitude" show-tooltip-when-overflow/>
      <el-table-column label="分类" align="left" prop="category" show-overflow-tooltip/>
      <el-table-column label="展示顺序" align="center" prop="orderNum" show-tooltip-when-overflow/>
      <el-table-column label="操作" fixed="right" align="center" width="150" class-name="small-padding fixed-width fixed-right">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['wxapp:map:edit']"
          >修改
          </el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['wxapp:map:remove']"
          >删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改map对话框 -->
    <el-dialog v-el-drag-dialog :title="title" :visible.sync="open" width="600px">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="地点名称" prop="title">
          <el-input v-model="form.title" placeholder="请输入地点名称"/>
        </el-form-item>
        <el-form-item label="地点介绍" prop="description">
          <el-input v-model="form.description" type="textarea" placeholder="请输入地点介绍"/>
        </el-form-item>
        <el-form-item label="地点logo" prop="logo">
          <el-input v-model="form.logo" placeholder="请输入地点logo"/>
        </el-form-item>
        <el-row class="custom"
                v-for="(item,index) in items"
                :key="index">
          <el-col :span="18">
            <el-form-item>
              <span slot="label">地点图片{{index+1}}</span>
              <el-input v-model="item.image" type="textarea"  placeholder="请输入内容"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="6" class="custom">
            <div class="icon-item" @click="add">
              <i class="el-icon-plus"/>
            </div>
            <div class="icon-item" @click="del(index)">
              <i class="el-icon-minus"/>
            </div>
            <div class="icon-item">
              <i class="el-icon-arrow-up"/>
            </div>
            <div class="icon-item">
              <i class="el-icon-arrow-down"/>
            </div>
          </el-col>
        </el-row>
        <el-form-item label="经度" prop="longitude">
          <el-input v-model="form.longitude" placeholder="请输入经度"/>
        </el-form-item>
        <el-form-item label="纬度" prop="latitude">
          <el-input v-model="form.latitude" placeholder="请输入纬度"/>
        </el-form-item>
        <el-form-item label="分类">
          <el-select v-model="form.category" placeholder="请选择分类">
            <el-option
              v-for="cate in categoryOptions"
              :key="cate.category"
              :label="cate.category"
              :value="cate.category"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="展示顺序" prop="orderNum">
          <el-input v-model="form.orderNum" placeholder="请输入展示顺序"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
  import { listMap, getMap, delMap, addMap, updateMap, exportMap } from '@/api/wxapp/map'
  import { listCategory } from '@/api/wxapp/category'
  import elDragDialog from '@/directive/el-drag-dialog'

  export default {
    directives: { elDragDialog },
    data() {
      return {
        // 遮罩层
        loading: true,
        // 选中数组
        ids: [],
        // 非单个禁用
        single: true,
        // 非多个禁用
        multiple: true,
        // 总条数
        total: 0,
        // map表格数据
        mapList: [],
        // 弹出层标题
        title: '',
        // 是否显示弹出层
        open: false,
        categoryOptions: [],
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          title: undefined,
          description: undefined,
          logo: undefined,
          images: undefined,
          longitude: undefined,
          latitude: undefined,
          category: undefined,
          orderNum: undefined
        },
        // 表单参数
        form: {},
        // 表单校验
        rules: {},
        items: []
      }
    },
    created() {
      this.getList();
      this.getCategory();
    },
    methods: {
      //  add img
      add: function () {
        this.items.push({image:''})
      },
      // delete img
      del: function(index) {
        //  not allow to delete the first
        if (index !== 0) {
          this.items.splice(index, 1)
        }
      },
      /** 查询map列表 */
      getList() {
        this.loading = true
        listMap(this.queryParams).then(response => {
          this.mapList = response.rows
          this.total = response.total
          this.loading = false
        })
      },
      getCategory() {
        listCategory().then(response => {
          this.categoryOptions = response.rows;
        });
      },
      // 取消按钮
      cancel() {
        this.open = false
        this.reset()
        this.items = []
      },
      // 表单重置
      reset() {
        this.form = {
          id: undefined,
          title: undefined,
          description: undefined,
          logo: undefined,
          images: undefined,
          longitude: undefined,
          latitude: undefined,
          category: undefined,
          orderNum: undefined,
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
      // 多选框选中数据
      handleSelectionChange(selection) {
        this.ids = selection.map(item => item.id)
        this.single = selection.length != 1
        this.multiple = !selection.length
      },
      /** 新增按钮操作 */
      handleAdd() {
        this.reset()
        this.items = [{image:''}]
        this.open = true
        this.title = '添加map'
      },
      /** 修改按钮操作 */
      handleUpdate(row) {
        this.reset()
        const id = row.id || this.ids
        getMap(id).then(response => {
          let images = response.data.images.split(',')
          images.forEach((item,index)=>{
            const image = item
            let obj = {
              image
            }
            this.items.push(obj)
          })
          this.form = response.data
          this.open = true
          this.title = '修改map'
        })
      },
      getImgurls() {
        const images = this.items
        var img = ""
        images.forEach((item,index)=>{
          img += item.image + ','
        })
        img = img.substring(0,img.length -1)
        this.form.images = img
      },
      /** 提交按钮 */
      submitForm: function() {
        this.$refs['form'].validate(valid => {
          if (valid) {
            if (this.form.id != undefined) {
              this.getImgurls()
              updateMap(this.form).then(response => {
                if (response.code === 200) {
                  this.msgSuccess('修改成功')
                  this.open = false
                  this.getList()
                } else {
                  this.msgError(response.msg)
                }
              })
              this.items = []
            } else {
              this.getImgurls()
              addMap(this.form).then(response => {
                if (response.code === 200) {
                  this.msgSuccess('新增成功')
                  this.open = false
                  this.getList()
                } else {
                  this.msgError(response.msg)
                }
              })
              this.items = []
            }
          }
        })
      },
      /** 删除按钮操作 */
      handleDelete(row) {
        const ids = row.id || this.ids
        this.$confirm('是否确认删除map编号为"' + ids + '"的数据项?', '警告', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(function() {
          return delMap(ids)
        }).then(() => {
          this.getList()
          this.msgSuccess('删除成功')
        }).catch(function() {
        })
      },
      /** 导出按钮操作 */
      handleExport() {
        const queryParams = this.queryParams
        this.$confirm('是否确认导出所有map数据项?', '警告', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(function() {
          return exportMap(queryParams)
        }).then(response => {
          this.download(response.msg)
        }).catch(function() {
        })
      }
    }
  }
</script>

<style scoped>
  .custom{

    display: flex;
    justify-content: center;
    align-items: center;
  }
  .icon-item {
    text-align: center;
    width: 25%;
    font-size: 20px;
    color: #24292e;
    cursor: pointer;
  }
</style>
