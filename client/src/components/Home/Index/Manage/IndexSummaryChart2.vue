<template>
    <div id="myPieChart2" />
</template>

<script>

export default {
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
        this.showChart();
    },
    methods: {
        showChart: function() {
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

            // Instantiate and draw the chart.
            var chart = new google.visualization.PieChart(document.getElementById('myPieChart2'));
            chart.draw(data, options);
        },
    }
}
</script>

<style scoped>
</style>