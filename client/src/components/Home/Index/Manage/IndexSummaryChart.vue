<template>
    <v-card>
        <v-card-title primary-title>
            <div>
              <h3 class="headline mb-0">Kangaroo Valley Safari</h3>
              <div>Located two hours south of Sydney in the <br>Southern Highlands of New South Wales, ...</div>
            </div>
        </v-card-title>
        <div v-bind:id="item.chartId" />
    </v-card>
</template>

<script>
import Config       from "@/js/config.js"

export default {
    props:['item'],
    data() {
        return {
            idxArr : [['Date', 'Index'],],
            // tab: null,
            // items: ['ETP 운용정보', '지수관리', 'PDF 관리'],
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
        this.getIndexSummaryHist();
        // this.showChart();
    },
    methods: {
        showChart: function() {
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
        getIndexSummaryHist: function() {
            console.log('getInfoOpenReqList');
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
        }      

    }
}
</script>

<style scoped>
</style>