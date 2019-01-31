<template>
    <main>
        <MainHeader></MainHeader>
<!--        
        <router-view></router-view>
-->        
    </main>
</template>

<script>
import MainHeader   from  './MainHeader.vue'

export default {
    
    components: {
        MainHeader     : MainHeader,
    },
    created: function() {
        this.$EventBus.$on('drawerOpen', this.drawerOpen);   //리뉴얼 공지팝업 MODAL 닫기
        this.$EventBus.$on('drawerClose', this.drawerClose);   //리뉴얼 공지팝업 MODAL 닫기
    },
    methods: {
        drawerOpen: function() {
            console.log('drawerOpen');
        },
        drawerClose: function() {
            console.log('drawerClose');
        },
    }

}
</script>

<style scoped>
main {
    position:fixed;
    margin-top:62px;
    margin-left:200px;
    color: #000;
}
</style>