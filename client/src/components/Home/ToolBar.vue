<template>
<header>
  <v-toolbar color="white">
      <v-toolbar-side-icon @click="menuClick"></v-toolbar-side-icon>
      <v-toolbar-title><router-link class="routerlink" to="/index/manage">ETP PLATFORM</router-link></v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        
        <v-btn flat color="white"><v-badge overlap color="orange">
            <span slot="badge">3</span>
            <v-icon large color="grey">notifications</v-icon>
        </v-badge></v-btn>
        <v-btn flat color="white"><v-avatar
            :tile="tile"
            :size="avatarSize"
            color="gray lighten-4">
            <img src="/assets/img/avatar.png" alt="avatar">
        </v-avatar></v-btn>
        <v-btn flat color="primary">[DBfn] James</v-btn>
      </v-toolbar-items>
    </v-toolbar>
</header>    
</template>

<script>
export default {
    data() {
        return {
            tile: false,
            avatarSize: "36px",
            isDrawer: true,
        };
    },
    methods: {
        menuClick: function() {
            console.log('ToolBar menuClick!!!');
            this.isDrawer = !this.isDrawer;
            this.$EventBus.$emit("menuClick", this.isDrawer);
        },
    }
}
</script>

<style scoped>
header {
  /* for sticky header */
  position: fixed;
  top: 0;
  height: 60px;
  width: 100%;
  z-index: 2000;
  background-color: #fff;
}

</style>