<template>
  <div class="dashboard-editor-container">

    <el-row :gutter="32">
      <el-col :xs="24" :sm="24" :lg="8">
        <div class="chart-wrapper">
          <div>昨日访问量</div>
          <dailyretain/>
        </div>
      </el-col>
      <el-col :xs="24" :sm="24" :lg="8">
        <div class="chart-wrapper">
          <div>上周访问量</div>
          <weeklyretain/>
        </div>
      </el-col>
      <el-col :xs="24" :sm="24" :lg="8">
        <div class="chart-wrapper">
          <div>上月访问量</div>
          <monthlyretain/>
        </div>
      </el-col>
    </el-row>

    <el-row style="background:#fff;padding:16px 16px 0;margin-bottom:32px;">
      <div>近七日用户访问小程序数据概况</div>
      <line-chart :chart-data="lineChartData"/>
    </el-row>


  </div>
</template>

<script>
  import LineChart from './dashboard/LineChart'
  import dailyretain from './dashboard/dailyretain'
  import weeklyretain from './dashboard/weeklyretain'
  import monthlyretain from './dashboard/monthlyretain'
  import { sendpost } from '@/api/index'

  export default {
    name: 'Index',
    components: {
      dailyretain,
      weeklyretain,
      monthlyretain,
      LineChart
    },
    data() {
      return {
        url: 'https://api.weixin.qq.com/datacube/getweanalysisappiddailysummarytrend',
        lineChartData: '',
      }
    },
    created() {
      this.getInfo()
    },
    methods: {
      getLastWeek() {
        var now = new Date(); //当前日期
        var nowDayOfWeek = now.getDay(); //今天本周的第几天
        var nowDay = now.getDate(); //当前日
        var nowMonth = now.getMonth(); //当前月
        var nowYear = now.getFullYear(); //当前年
        var first = new Date(nowYear, nowMonth, nowDay - 7);
        var second = new Date(nowYear, nowMonth, nowDay - 6);
        var third = new Date(nowYear, nowMonth, nowDay - 5);
        var fourth = new Date(nowYear, nowMonth, nowDay - 4);
        var fifth = new Date(nowYear, nowMonth, nowDay - 3);
        var sixth = new Date(nowYear, nowMonth, nowDay - 2);
        var seventh = new Date(nowYear, nowMonth, nowDay - 1);
        var a = this.parseTime(first,'{y}{m}{d}');
        var b = this.parseTime(second,'{y}{m}{d}');
        var c = this.parseTime(third,'{y}{m}{d}');
        var d = this.parseTime(fourth,'{y}{m}{d}');
        var e = this.parseTime(fifth,'{y}{m}{d}');
        var f = this.parseTime(sixth,'{y}{m}{d}');
        var g = this.parseTime(seventh,'{y}{m}{d}');
        return [a,b,c,d,e,f,g]
      },
      getInfo(){
        var itemurl = this.url
        let visit_total = [];
        let share_pv = [];
        let share_uv = [];
        var date = this.getLastWeek();
        date.forEach((item) =>{
          var time = {
            "begin_date": item, "end_date": item
          }
          var data = {
            "url": itemurl,
            "param": time
          };
          sendpost(data).then(response =>{
            var res = response.data;
            if (response.code === 200) {
              if (res.errcode === 40001){
                this.msgError('AppSecret错误或者AppSecret不属于这个公众号，请开发者确认AppSecret的正确性')
              } else if (res.errcode === -1){
                this.msgError('系统繁忙，请稍候再试')
              } else if (res.list.length == 0){
                this.msgError('近七日数据暂未获取到，请稍后刷新')
              } else {
                visit_total.push(res.list[0].visit_total)
                share_pv.push(res.list[0].share_pv)
                share_uv.push(res.list[0].share_uv)
              }
            }else {
              this.msgError(response.msg)
            }
          })
        })
        const lineChartData = {
          nearInfo: {
            ref_date: date,
            visit_total: visit_total,
            share_pv: share_pv,
            share_uv: share_uv
          }
        }
        this.lineChartData = lineChartData.nearInfo
      },
    }
  }
</script>

<style lang="scss" scoped>
  .dashboard-editor-container {
    padding: 32px;
    background-color: rgb(240, 242, 245);
    position: relative;

    .chart-wrapper {
      background: #fff;
      padding: 16px 16px 0;
      margin-bottom: 32px;
    }
  }

  @media (max-width: 1024px) {
    .chart-wrapper {
      padding: 8px;
    }
  }
</style>
