<template>
<aside>
<v-navigation-drawer
  v-model="drawer"
>
<v-list dense expand>
  <v-list-group
    v-for="item in items"
    v-model="item.active"
    :key="item.title"
    :prepend-icon="item.action"
    no-action
  >
  <v-list-tile slot="activator">
    <v-list-tile-content>
      <v-list-tile-title>{{ item.title }}</v-list-tile-title>
    </v-list-tile-content>
  </v-list-tile>
    <v-list-tile
      v-for="subItem in item.items"
      :key="subItem.title"
    >
    <v-list-tile-content>
      <v-list-tile-title><router-link :to="subItem.link">{{ subItem.title }}</router-link></v-list-tile-title>
    </v-list-tile-content>

  </v-list-tile>
  </v-list-group>
</v-list>
</v-navigation-drawer>
</aside>
</template>

<script>
export default {
  data() {
    return {
      drawer: true,
      items: [
        {
          action: 'local_activity',
          title: 'INDEX',
          active: true,
          items: [
            { title: '지수관리', link: '/index/manage' },
            { title: '지수등록', link: '/index/register'  },
            { title: '지수개발', link: '/index/develop'  }
          ]
        },
        {
          action: 'local_activity',
          title: 'ETP',
          active: true,
          items: [
            { title: 'ETP 운용 관리', link: '/etp/manage' },
            { title: 'ETP 신규 등록', link: '/etp/register'  },
            { title: '계약지수 목록', link: '/etp/contract'  }
          ]
        },
        {
          action: 'local_activity',
          title: 'TODAY',
          active: true,
          items: [
            
          ]
        },
        {
          action: 'local_activity',
          title: 'SUPPORT',
          active: true,
          items: [
            { title: '기초지수코드정보', link: '/index/manage' },
            { title: '지수채용주식수', link: '/index/register'  },
            { title: '기초지수종가', link: '/index/develop'  },
            { title: '추적오차율 괴리', link: '/index/develop'  }
          ]
        },
        {
          action: 'local_activity',
          title: 'ADMIN',
          active: true,
          items: [
            { title: '회원관리', link: '/index/manage' },
            { title: '지수관리', link: '/index/register'  },
            { title: 'ETP관리', link: '/index/develop'  }
          ]
        },
      ] //item
    }; // return
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
      this.drawer = !this.drawer;
    },
  }
}
</script>

<style scoped>
aside {
  /* for fixed side bar */
  position: fixed;
  top: 56px;
  /*
  bottom: 0;
  */
  background-color: gray;
  box-shadow: 0 2px 2px rgba(0, 0, 0, 0.05), 0 1px 0 rgba(0, 0, 0, 0.05);

}

</style>