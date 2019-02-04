<template>
    <main :class="{drawer: isDrawer}">
        <router-view></router-view>
    </main>
</template> 

<script>

export default {
    data() {
        return {
            isDrawer: false,
        };
    },
    components: {
    },
    beforeCreate() {
    },
    created: function() {
        this.$EventBus.$on('menuClick' , this.menuClick);
        this.$router.push({ path: '/index/manage' });
    },
    beforeDestroy() {
        this.$EventBus.$off('menuClick');
    },

    methods: {
        menuClick: function() {
        console.log("NavFull menuClick");
        this.isDrawer = !this.isDrawer;
        },
    }
}
</script>

<style scoped>
main {
    /*
    position: relative;
    top:48px;
    left:302px;
    */
    float: right;
    margin-left:310px;
    margin-top:63px;
    margin-right:10px;

}

.drawer {
    margin-left:0px;
}

</style>