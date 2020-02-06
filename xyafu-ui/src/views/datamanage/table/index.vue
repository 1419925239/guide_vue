<template>
  <div class="app-container">
    <el-row :gutter="20">
      <!--数据库表名-->
      <el-col :span="4" :xs="24">
        <div class="head-container">
          <el-input
            v-model="tableName"
            placeholder="请输入数据表名称"
            clearable
            size="small"
            prefix-icon="el-icon-search"
            style="margin-bottom: 20px"
          />
        </div>
        <div class="head-container">
          <el-tree
            :data="tableOptions"
            :props="defaultProps"
            :expand-on-click-node="false"
            :filter-node-method="filterNode"
            ref="tree"
            default-expand-all
            @node-click="handleNodeClick"
          />
        </div>
      </el-col>

      <el-col :span="20" :xs="24">
          <!--数据表-->
          <div v-if="welIsShow">
            <welcome/>
          </div>
          <div v-else-if="conIsShow">
            <introduction/>
          </div>
          <div v-else-if="schIsShow">
            <school/>
          </div>
          <div v-else-if="vdIsShow">
            <shipin/>
          </div>
          <div v-else-if="cgIsShow">
            <category/>
          </div>
          <div v-else-if="mapIsShow">
            <ditu/>
          </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>

  import welcome from './welcome'
  import introduction from './content'
  import school from './school'
  import shipin from './video'
  import category from './category'
  import ditu from './map'

  export default {
    name: 'index',
    components: { welcome,introduction,school,shipin,category,ditu },
    data(){
      return {
        // 数据表树选项
        tableOptions: [{
          'id': 100,
          'label': '数据表名',
          'children': [
            { 'id': 101, 'label': 'welcome' },
            { 'id': 102, 'label': 'content' },
            { 'id': 103, 'label': 'school' },
            { 'id': 104, 'label': 'video' },
            { 'id': 105, 'label': 'category' },
            { 'id': 106, 'label': 'map' },]
        }],
        defaultProps: {
          children: "children",
          label: "label"
        },
        tableName: undefined,
        welIsShow: undefined,
        conIsShow: undefined,
        schIsShow: undefined,
        vdIsShow: undefined,
        cgIsShow: undefined,
        mapIsShow: undefined,
      }
    },
    watch: {
      // 根据名称筛选数据表树
      tableName(val) {
        this.$refs.tree.filter(val);
      }
    },
    created() {
      this.welIsShow = true;
    },
    methods: {
      clearStatus(){
        this.welIsShow = false;
        this.conIsShow = false;
        this.schIsShow = false;
        this.vdIsShow = false;
        this.cgIsShow = false;
        this.mapIsShow = false;
      },
      // 筛选节点
      filterNode(value, data) {
        if (!value) return true;
        return data.label.indexOf(value) !== -1;
      },
      // 节点单击事件
      handleNodeClick(data) {
        if ("welcome" == data.label){
          this.clearStatus();
          this.welIsShow = true;
        } else if ("content" == data.label){
          this.clearStatus();
          this.conIsShow = true;
        } else if ("school" == data.label){
          this.clearStatus();
          this.schIsShow = true;
        } else if ("video" == data.label){
          this.clearStatus();
          this.vdIsShow = true;
        } else if ("category" == data.label){
          this.clearStatus();
          this.cgIsShow = true;
        } else if ("map" == data.label){
          this.clearStatus();
          this.mapIsShow = true;
        }
      },


    }
  }
</script>

<style scoped>

</style>
