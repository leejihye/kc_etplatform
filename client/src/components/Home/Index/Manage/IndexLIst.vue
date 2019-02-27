<template>
<div>
  <v-card flat>
    <v-card-title primary-title>
      <div>
        <h3 class="headline mb-0">Index List | </h3>
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
      <td class="text-xs-center">{{ props.item.req_date }}</td>
      <td class="text-xs-center">
        <v-icon>equalizer</v-icon>
      </td>
    </template>
  </v-data-table>
</div>    
</template>

<script>
import Config       from "@/js/config.js"

export default {
  props: [],
  data() {
    return {
      inst_cd: '06485', // FnGuide 로 테스트
      results: [],
      rowsPerPageItems: [20, 10, 30, 50],
      headers: [
        {text: 'ID', align:"center", sortable: false, value: 'id' },
        {text: '지수명', align:"center", sortable: false, value: 'inst_name'},
        {text: '등록일', align:"center", sortable: false, value: 'user_name'},
        {text: '발표여부', align:"center", value: 'idx_nm' },
        {text: '산출타입', align:"center", value: 'idx_sym_code' },
        {text: 'ETP', align:"center", value: 'req_date' },
        {text: '정보조회기관', align:"center", value: 'req_process' },
        {text: '', align:"center", value: 'index_info' },
      ],
    };
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
    },
      
  }
}
</script>
<style scoped>
  table.v-table tbody td, table.v-table tbody th {
      height: 30px;
  }

</style>
