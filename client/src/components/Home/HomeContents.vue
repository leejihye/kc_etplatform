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
    position: relative;
    margin-top:10px;
    margin-left:156px;

}

.drawer {
    margin-left:-146px;
}

</style>