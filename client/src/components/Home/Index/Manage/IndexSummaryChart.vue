<template>
<!--
    <div v-bind:id="item.chartId" />
-->
<div></div>    
</template>

<script>

export default {
    props:['item'],
    data() {
        return {
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
        console.log("IndexSummaryChart......");
        // console.log(this.item);
        // this.showChart();
    },
    methods: {
        /*
        showChart: function() {
            var vm = this;
            // Define the chart to be drawn.
            var options = {'legend':'left',
                'title':'My Big Pie Chart',
                'is3D':true,
                 'width':'100%', 'height':'100%'};
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Element');
            data.addColumn('number', 'Percentage');
            data.addRows([
                ['Nitrogen', 0.78],
                ['Oxygen', 0.21],
                ['Other', 0.01]
            ]);

    console.log("chartId");
    console.log(vm.item.chartId);
            // Instantiate and draw the chart.
            var chart = new google.visualization.PieChart(document.getElementById(vm.item.chartId));
            chart.draw(data, options);
        },
        */
    }
}
</script>

<style scoped>
</style>