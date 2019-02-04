<template>
    <v-app>
        <ToolBar></ToolBar>
        <NoticeModal v-if="showModal"></NoticeModal>
        <NavFull></NavFull>
        <HomeContents></HomeContents>
        <Footer></Footer>
    </v-app>
</template> 

<script>

import ToolBar          from './ToolBar.vue';
import NavFull          from './NavFull.vue';
import HomeContents     from './HomeContents.vue';
import NoticeModal      from './NoticeModal.vue';
import Footer           from './Footer.vue';

export default {
    data() {
        return {
            showModal: false,
        };
    },
    components: {
        ToolBar: ToolBar,
        NavFull: NavFull,
        HomeContents: HomeContents,
        NoticeModal:NoticeModal,
        Footer: Footer,
    },
    beforeCreate() {
        // this.$forceupdate;
    },
    created: function() {
        this.$EventBus.$on('popClose', this.popClose);
    },
    beforeDestroy() {
        this.$EventBus.$off('popClose');
    },    
    methods: {
        popClose: function() {
            // console.log('popClose');
            this.showModal = false;
        },
    }
}
</script>

<style scoped>


</style>