<template>
  <div :class="className" :style="{height:height,width:width}" />
</template>

<script>
  import echarts from 'echarts'
  require('echarts/theme/macarons') // echarts theme
  import resize from './mixins/resize'
  import { sendpost } from '@/api/index'

  export default {
    name : 'monthlyretain',
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
        url: 'https://api.weixin.qq.com/datacube/getweanalysisappidmonthlyretaininfo',
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
      this.getMonthlyRetain()
    },
    methods: {
      getLastMonth() {
        var date = new Date();
        var firstDay = new Date(date.getFullYear(), date.getMonth() - 1, 1);
        var lastDay = new Date(date.getFullYear(), date.getMonth(), 0);
        var a = this.parseTime(firstDay,'{y}{m}{d}');
        var b = this.parseTime(lastDay,'{y}{m}{d}');
        return {
          "begin_date": a, "end_date": b
        };
      },
      getMonthlyRetain() {
        var itemurl = this.url;
        var date = this.getLastMonth();
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
              this.msgError('上月访问量数据暂未获取到，请稍后刷新')
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
                    var colorList = ['#67e0e3','#ffae8b' ];
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
