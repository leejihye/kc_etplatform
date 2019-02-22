<template>
<div>
  <v-container fluid grid-list-md pa-0 mt-4 mb-4>
  <v-layout row wrap>
    <v-flex md4> 
      <IndexSummaryChart :item="chartItem1"></IndexSummaryChart>
    </v-flex>
    <v-flex md4>
      <IndexSummaryChart :item="chartItem2"></IndexSummaryChart>
    </v-flex>
    <v-flex md4> 
      <IndexSummaryChart :item="chartItem3"></IndexSummaryChart>
    </v-flex>
  </v-layout>
  <v-layout row wrap>
    <v-flex md3> 
      <IndexSummaryBox :item="boxItem1"></IndexSummaryBox>
    </v-flex>
    <v-flex md3>
      <IndexSummaryBox :item="boxItem2"></IndexSummaryBox>
    </v-flex>
    <v-flex md3> 
      <IndexSummaryBox :item="boxItem3"></IndexSummaryBox>
    </v-flex>
    <v-flex md3> 
      <IndexSummaryBox :item="boxItem4"></IndexSummaryBox>
    </v-flex>
  </v-layout>
  </v-container>
  <v-card flat>
    <v-card-title primary-title>
      <div>
        <h3 class="headline mb-0">정보공개 요청처리</h3>
        <div style="color:grey"> 지수 구성종목의 유동비율, cap비율 및 다양한 factor 비율과 기준시가총액 등 지수의 상세 정보를 요청자와 공유합니다.</div>
      </div>
    </v-card-title>
  </v-card>
  <v-data-table 
    :headers="headers"
    :items="results"
    :rows-per-page-items="rowsPerPageItems"
    disable-initial-sort
  >
    <template slot="items" slot-scope="props">
      <td class="text-xs-center">{{ props.item.user_id }}</td>
      <td class="text-xs-center">{{ props.item.inst_name }}</td>
      <td class="text-xs-center">{{ props.item.user_name }}</td>
      <td class="text-xs-center">{{ props.item.idx_nm }}</td>
      <td class="text-xs-center">{{ props.item.idx_sym_code }}</td>
      <td class="text-xs-center">{{ props.item.req_date }}</td>
      <td class="text-xs-center"><v-btn small
        color="green"
        class="white--text"
      >
        <v-icon dark>thumb_up_alt</v-icon>
        Yes
      </v-btn>
      <v-btn small
        color="blue-grey"
        class="white--text"
      >
        <v-icon dark>thumb_down_alt</v-icon>
        No
      </v-btn></td>
    </template>
  </v-data-table>
</div>    
</template>

<script>
import Config       from "@/js/config.js"
import IndexSummaryChart   from  './IndexSummaryChart.vue'
import IndexSummaryBox   from  './IndexSummaryBox.vue'

export default {
  props: [],
  data() {
    return {
      rowsPerPageItems: [10, 20, 30, 50],
      headers: [
        {text: 'reqID', align:"center", sortable: false, value: 'id' },
        {text: '신청기관', align:"center", sortable: false, value: 'inst_name'},
        {text: '신청자', align:"center", sortable: false, value: 'user_name'},
        {text: '지수', align:"center", value: 'idx_nm' },
        {text: '지수코드', align:"center", value: 'idx_sym_code' },
        {text: '요청일자', align:"center", value: 'req_date' },
        {text: '요청처리', align:"center", value: 'req_process' },
      ],
      results: [],
      chartItem1: {chartId: "summaryChart1", indexCd: "DBF001", chartColor: '#B39DDB',
        subTitle: 'the Newest Index'},
      chartItem2: {chartId: "summaryChart2", indexCd: "DBF002", chartColor: "#9FA8DA",
        subTitle: 'the Best Performed Index'},
      chartItem3: {chartId: "summaryChart3", indexCd: "DBF003", chartColor: "#90CAF9",
        subTitle: 'the Most Popular Index'},
      boxItem1: {title:"발표지수", count: 120, subTitle: '회원사/벤더로 분배되는 지수', updateDate: '25/02/19'},
      boxItem2: {title:"산출지수", count: 156, subTitle: '미발표 지수를 포함한 플랫폼에서 산출중인 지수', updateDate: '25/02/19'},
      boxItem3: {title:"프로젝트", count: 7, subTitle: '개발중인 지수', updateDate: '25/02/19'},
      boxItem4: {title:"조회요청", count: 12, subTitle: '지수상세정보 공개요청 건수', updateDate: '25/02/19'},
    };
  },
  components: {
    IndexSummaryChart     : IndexSummaryChart,
    IndexSummaryBox : IndexSummaryBox,
  },
  computed:{

  },
  mounted: function() {
      this.getInfoOpenReqList();
  },
  created: function() {
      
  },
  beforeDestroy() {
      
  },
  methods: {
    getInfoOpenReqList: function() {
      console.log('getInfoOpenReqList');
      var vm = this;

      axios.get(Config.base_url+'/user/index/getinfoopenreqlist', {
          params: {
              // "bbs_id" : vm.bbs_id,
              // "seloption" : vm.seloption,
              // "searchinfo" : vm.searchinfo,
              // "curPage": vm.curPage,
              // "perPage": vm.perPage
          }
      }).then(function(response) {
          // console.log(response);
          if(response.data.success == false){
              alert("해당 신청현황이 없습니다");
          }else {
            var items = response.data.results;
            var tcount   = response.data.count;
            vm.results = items;
            vm.count = tcount;
          }
      });
    }      
  }
}
</script>
<style scoped>
  table.v-table tbody td, table.v-table tbody th {
      height: 30px;
  }

</style>
