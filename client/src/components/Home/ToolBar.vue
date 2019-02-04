<template>
<header>
  <v-toolbar dense color="white">
      <v-toolbar-side-icon @click="menuClick"></v-toolbar-side-icon>
      <v-toolbar-title><router-link class="routerlink" to="/index/manage">ETP PLATFORM</router-link></v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        <v-badge color="orange" overlap>
            <span slot="badge">3</span>
            <v-icon color="grey">notifications</v-icon>
        </v-badge>
        <v-avatar
            :tile="tile"
            :size="avatarSize"
            color="gray lighten-4">
            <img src="/assets/img/avatar.png" alt="avatar">
        </v-avatar><v-btn flat>Link Two</v-btn>
        <v-btn flat>Link Three</v-btn>
      </v-toolbar-items>
    </v-toolbar>
</header>    
</template>

<script>
export default {
    data() {
        return {
            tile: false,
            avatarSize: "32px",
        };
    },
    methods: {
        menuClick: function() {
            console.log('ToolBar menuClick!!!');
            this.$EventBus.$emit("menuClick");
        },
    }
}
</script>

<style scoped>
header {
  /* for sticky header */
  position: fixed;
  top: 0;
  height: 48px;
  width: 100%;
  z-index: 2000;
  background-color: #fff;
}

</style>