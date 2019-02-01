<template>
  <header>
      <div class="title">
          <div id="title-menu">
            <v-icon large color="#555" v-on:click="menuClick">menu</v-icon>
          </div>

          <div id="title-content">
            <router-link to="/"><span>ETP PLATFORM</span></router-link>
          </div>
          
          <div id="title-avatar">
            <v-avatar
                :tile="tile"
                :size="avatarSize"
                color="gray lighten-4">
                <img src="/assets/img/avatar.png" alt="avatar">
            </v-avatar>
            <span>[DBfn] James</span>
          </div>

          <div id="title-badge">
            <v-badge color="orange" overlap>
                <span slot="badge">3</span>
                <v-icon large color="grey">notifications</v-icon>
            </v-badge>
          </div>
      </div>
    </header>
</template>

<script>
export default {
    data() {
        return {
            tile: false,
            avatarSize: "36px",
        };
    },
    methods: {
        menuClick: function() {
            // console.log('menuClick!!!');
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
  width: 100%;
  height: 60px;
  z-index: 2000;
  background-color: #fff;
  box-shadow: 0 2px 2px rgba(0, 0, 0, 0.05), 0 1px 0 rgba(0, 0, 0, 0.05);
  
}

.title {
  margin-top:15px;
  margin-left:20px;
  color: #222;
}

.title > * {
    display: inline-block;
    vertical-align:middle;
}

.title #title-content {
    font-size: 24px;
    margin-left : 24px;
}

.title #title-badge {
    float: right;
    margin-right : 40px;
}

.title #title-avatar {
    float: right;
    margin-right : 40px;
}

.title #title-avatar span{
    color: rgba(38, 23, 243, 0.993);
    font-size: 12px;
}
</style>