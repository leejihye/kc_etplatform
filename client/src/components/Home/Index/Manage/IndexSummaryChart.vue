<template>
    <v-card>
        <div class="card_title">
            <h5 class="headline mb-0">{{idxMem.name}}</h5>
            <div><span class="grey--text">{{item.subTitle}}</span></div>
            <h3 class="headline mb-0 text-xs-right">{{idxMem.close_idx}}</h3>
            <div class="text-xs-right"><span class="red--text">{{idxMem.fluc_idx}} ({{idxMem.fluc_rate}}%)</span></div>
        </div>
        <div v-bind:id="item.chartId" />
    </v-card>
</template>

<script>
import Config       from "@/js/config.js"

export default {
    props:['item'],
    data() {
        return {
            idxArr: [['Date', 'Index'],],
            // tab: null,
            // items: ['ETP 운용정보', '지수관리', 'PDF 관리'],
            idxMem: {name: "", close_idx: "", fluc_idx: "", fluc_rate: ""},
        };
    },    
    components: {
        // Info     : Info,
        // Index     : Index,
        // Pdf     : Pdf,
    },
    created: function() {
    },
    mounted: function() {
        console.log("IndexSummaryChart...... : " + this.item.chartId);
        this.getIndexSummaryMem();
        this.getIndexSummaryHist();

        // window Size 변경시 다시 그림. drawer 에는 반응을 안함(수정 필요함)
        this.$nextTick(function() {
            window.addEventListener('resize', this.showChart);
        });
    },
    methods: {
        showChart: function() {
            console.log("Call showChart()......");
            var vm = this;
            // Define the chart to be drawn.
            var options = {
                series: [
                    {visibleInLegend: false,},
                ],
                colors: [vm.item.chartColor, ],
                vAxis: {textPosition: 'none', gridlines: {color: 'none',}, baselineColor: 'none'},
                hAxis: {textPosition: 'none', gridlines: {color: 'none',}, baselineColor: 'none'}
            };
            var data = new google.visualization.arrayToDataTable(vm.idxArr);

            // Instantiate and draw the chart.
            var chart = new google.visualization.AreaChart(document.getElementById(vm.item.chartId));
            chart.draw(data, options);
        },
        getIndexSummaryMem: function() {
            console.log('getIndexSummaryMem');
            var vm = this;

            // 개발시 Memory 조회 처리
            if(vm.item.indexCd == 'DBF001') {
                vm.idxMem.name = 'DBF 2차 산업혁명 지수';
                vm.idxMem.close_idx = '300.23';
                vm.idxMem.fluc_idx = '+1.65';
                vm.idxMem.fluc_rate = '0.51';
            }else if(vm.item.indexCd == 'DBF002') {
                vm.idxMem.name = 'DBF 4차전지 테마지수';
                vm.idxMem.close_idx = '300.23';
                vm.idxMem.fluc_idx = '+1.65';
                vm.idxMem.fluc_rate = '0.51';

            }else if(vm.item.indexCd == 'DBF003') {
                vm.idxMem.name = 'DBF 배당성장 지수';
                vm.idxMem.close_idx = '300.23';
                vm.idxMem.fluc_idx = '+1.65';
                vm.idxMem.fluc_rate = '0.51';
            }

            console.log("name : " + vm.idxMem.name);

        },
        getIndexSummaryHist: function() {
            console.log('getIndexSummaryHist');
            var vm = this;

            axios.get(Config.base_url+'/user/index/getindexsummaryhist', {
                params: {
                    "idx_cd" : vm.item.indexCd,
                }
            }).then(function(response) {
                // console.log(response);
                if(response.data.success == false){
                    alert("데이터가 없습니다");
                }else {
                    var items = response.data.results;
                    items.forEach(function(item, index) {
                        vm.idxArr.push([item.trd_dd, item.close_idx]);
                    });
                    vm.showChart();
                }
            });
        },
        beforeDestroy() {
            window.removeEventListener('resize', this.showChart);
        }
    }
}
</script>

<style scoped>
.card_title {
    padding: 10px 60px 0px 60px;
}
</style>