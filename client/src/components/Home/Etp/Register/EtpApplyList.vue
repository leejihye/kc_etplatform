<template>
    <v-data-table 
      :headers="headers"
      :items="results"
      :rows-per-page-items="rowsPerPageItems"
      dark
      class="elevation-1"
    >
      <template slot="items" slot-scope="props">
        <td class="text-xs-center">{{ props.index+1 }}</td>
        <td class="text-xs-center">{{ props.item.inst_nm }}</td>
        <td class="text-xs-left">{{ props.item.isu_kor_nm }}</td>
        <td class="text-xs-left">{{ props.item.req_date }}</td>
        <td class="text-xs-left">{{ props.item.kor_for_type }}</td>
        <td class="text-xs-center">{{ props.item.basic_idx }}</td>
        <td class="text-xs-left">{{ props.item.isu_eng_nm }}</td>
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
        { text: '발행사', align:"center", value: 'inst_cd', class: 'tableheader'},
        { text: '종목명', align:"center", value: 'isu_kor_nm' },
        { text: '신청일', align:"left", value: 'req_date' },
        { text: '국내/해외', align:"left", value: 'kor_for_type' },
        { text: '기초지수', align:"center", value: 'basic_idx' },
        { text: '처리현황',  align:"center", value: 'isu_eng_nm' }
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
            var items = response.data.results;
            var tcount   = response.data.count;
            items.forEach(function(item, index) {
              if(item.kor_for_type == 'K') {
                item.kor_for_type = "국내";
              }else if(item.kor_for_type == 'F') {
                item.kor_for_type = "해외";
              }else {
                item.kor_for_type = "";
              }

            });
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
  
  .tableheader {
    font-size: 50px !important;
  }

</style>
