<template>
  <div :class="className" :style="{height:height,width:width}" />
</template>

<script>
  import echarts from 'echarts'
  require('echarts/theme/macarons') // echarts theme
  import resize from './mixins/resize'
  import { sendpost } from '@/api/index'

  export default {
    name : 'weeklyretain',
    mixins: [resize],
    props: {
      className: {
        type: String,
        default: 'chart'
      },
      width: {
        type: String,
        default: '100%'
      },
      height: {
        type: String,
        default: '300px'
      }
    },
    data() {
      return {
        chart: null,
        url: 'https://api.weixin.qq.com/datacube/getweanalysisappidweeklyretaininfo',
      }
    },
    mounted() {
      this.$nextTick(() => {
        this.initChart()
      })
    },
    beforeDestroy() {
      if (!this.chart) {
        return
      }
      this.chart.dispose()
      this.chart = null
    },
    created() {
      this.getWeeklyRetain()
    },
    methods: {
      getLastWeek() {
        var now = new Date(); //当前日期
        var nowDayOfWeek = now.getDay(); //今天本周的第几天
        var nowDay = now.getDate(); //当前日
        var nowMonth = now.getMonth(); //当前月
        var nowYear = now.getFullYear(); //当前年
        var weekStartDate = new Date(nowYear, nowMonth, nowDay - nowDayOfWeek - 6);
        var weekEndDate = new Date(nowYear, nowMonth, nowDay - nowDayOfWeek);
        var startDate = this.parseTime(weekStartDate,'{y}{m}{d}');
        var endDate = this.parseTime(weekEndDate,'{y}{m}{d}');
        return {
          "begin_date": startDate, "end_date": endDate
        }
      },
      getWeeklyRetain(){
        var itemurl = this.url
        var date = this.getLastWeek();
        var data = {
          "url": itemurl,
          "param": date
        };
        sendpost(data).then(response =>{
          var res = response.data;
          if (response.code === 200) {
            if (res.errcode === 40001){
              this.msgError('AppSecret错误或者AppSecret不属于这个公众号，请开发者确认AppSecret的正确性')
            } else if (res.errcode === -1){
              this.msgError('系统繁忙，请稍候再试')
            } else if (res.visit_uv.length == 0){
              this.msgError('上周访问量数据暂未获取到，请稍后刷新')
            } else {
              var visit_uv = res.visit_uv[0].value;
              var visit_uv_new = res.visit_uv_new[0].value;
              this.initChart(visit_uv_new,visit_uv);
            }
          }else {
            this.msgError(response.msg)
          }
        })
      },
      initChart(visit_uv_new,visit_uv) {
        this.chart = echarts.init(this.$el, 'macarons')
        this.chart.setOption({
          tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
          },
          legend: {
            left: 'center',
            bottom: '10',
            data: ['新增用户留存', '活跃用户留存']
          },
          series: [
            {
              name: '访问来源',
              type: 'pie',
              roseType: 'radius',
              radius: [15, 95],
              center: ['50%', '38%'],
              data: [
                { value: visit_uv_new, name: '新增用户留存' },
                { value: visit_uv, name: '活跃用户留存' }
              ],
              itemStyle: {
                normal: {
                  color:function(params) {
                    //自定义颜色
                    var colorList = ['#5AB1EF','#FFB980' ];
                    return colorList[params.dataIndex]
                  }
                }
              },
              animationEasing: 'cubicInOut',
              animationDuration: 2600
            }
          ]
        })
      }
    }
  }
</script>
