<template>
    <div>
        <ToolBar></ToolBar>
        <NoticeModal v-if="showModal"></NoticeModal>
        <NavFull v-if="showDrawer"></NavFull>
<!--        
        <NavIcon v-if="!showDrawer"></NavIcon>
-->        
        <router-view></router-view>
        <Footer></Footer>
    </div>
</template> 

<script>

import ToolBar        from './ToolBar.vue';
import NavFull        from './NavFull.vue';
import NavIcon        from './NavIcon.vue';
import NoticeModal from './NoticeModal.vue';
import Footer        from './Footer.vue';

export default {
    data() {
        return {
            showModal: false,
            showDrawer: true,
        };
    },
    components: {
        ToolBar: ToolBar,
        NavFull: NavFull,
        NavIcon: NavIcon,
        NoticeModal:NoticeModal,
        Footer: Footer,
    },
    beforeCreate() {
        this.$forceupdate;
    },
    created: function() {
        this.$EventBus.$on('popClose', this.popClose);   //리뉴얼 공지팝업 MODAL 닫기
        this.$EventBus.$on('menuClick', this.menuClick);   //리뉴얼 공지팝업 MODAL 닫기
    },
    beforeDestroy() {
        this.$EventBus.$off('popClose');
    },    
    methods: {
        popClose: function() {
            // console.log('popClose');
            this.showModal = false;
        },
        menuClick: function() {
            console.log('HOME menuClick');
            this.showDrawer = !this.showDrawer;
            if(this.showDrawr) {
                this.$EventBus.$emit('drawerOpen');
            }else {
                this.$EventBus.$emit('drawerClose');

            }
        },
    }
}
</script>

<style scoped>


</style>