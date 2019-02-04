<template>
    <main>
        <v-tabs
          slot="extension"
          v-model="tab"
          color="white"
          align-with-title
        >
          <v-tabs-slider color="yellow"></v-tabs-slider>
  
          <v-tab v-for="item in items" :key="item">
            {{ item }}
          </v-tab>
        </v-tabs>

        <v-tabs-items v-model="tab">
            <v-tab-item>
                <Summary></Summary>
            </v-tab-item>
            <v-tab-item>
                <IndexList></IndexList>
            </v-tab-item>
            <v-tab-item>
                <IndexDetail></IndexDetail>
            </v-tab-item>
      </v-tabs-items>    
    </main>
</template>

<script>
import Summary   from  './Summary.vue'
import IndexList   from  './IndexList.vue'
import IndexDetail   from  './IndexDetail.vue'

export default {
        data() {
            return {
                tab: null,
                items: ['Summary', '관리지수목록', '지수종목상세'],
    	};
    },    
    components: {
        Summary     : Summary,
        IndexList     : IndexList,
        IndexDetail     : IndexDetail,
    },
    created: function() {
    },
    methods: {
    }

}
</script>

<style scoped>
main {
    position: relative;
    /*
    margin-left:200px;
    color: #000;
    */
}
</style>