<template>
    <v-data-table 
      :headers="headers"
      :items="results"
      :rows-per-page-items="rowsPerPageItems"
      class="elevation-1"
    >
      <template slot="items" slot-scope="props">
        <td>{{ props.index+1 }}</td>
        <td>{{ props.item.inst_cd }}</td>
        <td class="text-xs-left">{{ props.item.isu_kor_nm }}</td>
        <td class="text-xs-right">{{ props.item.req_date }}</td>
        <td class="text-xs-right">{{ props.item.etp_type }}</td>
        <td class="text-xs-right">{{ props.item.idx_nm }}</td>
        <td class="text-xs-right">{{ props.item.isu_eng_nm }}</td>
      </template>
    </v-data-table>
</template>

<script>
import Config       from "@/js/config.js"

export default {
  props: [],
  data() {
    return {
      rowsPerPageItems: [20, 10, 30, 50],
      headers: [
        { text: 'No', align:"center", sortable: false, value: 'index'},
        { text: '발행사', align:"center", value: 'inst_cd'},
        { text: '종목명', align:"center", value: 'isu_kor_nm' },
        { text: '신청일', align:"center", value: 'req_date' },
        { text: '국내/해외', align:"center", value: 'etp_type' },
        { text: '기초지수', align:"center", value: 'idx_nm' },
        { text: '비고',  align:"center", value: 'isu_eng_nm' }
      ],
      results: [],
    };
  },
  components: {
      
  },
  computed:{

  },
  mounted: function() {
      this.getEtpApplyList();
  },
  created: function() {
      
  },
  beforeDestroy() {
      
  },
  methods: {
    getEtpApplyList: function() {
      console.log('getEtpApplyList');
      var vm = this;

      axios.get(Config.base_url+'/user/etp/getetpapplylist', {
          params: {
              // "bbs_id" : vm.bbs_id,
              // "seloption" : vm.seloption,
              // "searchinfo" : vm.searchinfo,
              // "curPage": vm.curPage,
              // "perPage": vm.perPage
          }
      }).then(function(response) {
          console.log(response);
          if(response.data.success == false){
              alert("해당 신청현황이 없습니다");
          }else {
            var results = response.data.results;
            var tcount   = response.data.count;

            vm.results = results;
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
