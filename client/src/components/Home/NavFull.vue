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
      <v-list-tile-title>{{ item.title }}</v-list-tile-title>
  </v-list-tile>
    <v-list-tile
      v-for="subItem in item.subitems"
      :key="subItem.title"
    >
    <v-list-tile-content>
      <v-list-tile-title><router-link class="routerlink" :to="subItem.link">{{ subItem.title }}</router-link></v-list-tile-title>
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
          action: 'equalizer',
          title: 'INDEX',
          active: true,
          subitems: [
            { title: '지수관리', link: '/index/manage' },
            { title: '지수등록', link: '/index/register'  },
            { title: '지수개발', link: '/index/develop'  }
          ],
        },
        {
          action: 'accessibility_new',
          title: 'ETP',
          active: true,
          subitems: [
            { title: 'ETP 운용 관리', link: '/etp/manage' },
            { title: 'ETP 신규 등록', link: '/etp/register'  },
            { title: '계약지수 목록', link: '/etp/contract'  }
          ],
        },
        {
          action: 'schedule',
          title: 'TODAY',
          active: true,
          subitems: [
            { title: 'TODAY1', link: '/etp/manage' },
            { title: 'TODAY2', link: '/etp/register'  },
            { title: 'TODAY3', link: '/etp/contract'  }
          ],
        },
        {
          action: 'account_balance',
          title: 'SUPPORT',
          active: true,
          subitems: [
            { title: '기초지수코드정보', link: '/index/manage' },
            { title: '지수채용주식수', link: '/index/register'  },
            { title: '기초지수종가', link: '/index/develop'  },
            { title: '추적오차율 괴리', link: '/index/develop'  },
          ],
        },
        {
          action: 'account_circle',
          title: 'ADMIN',
          active: true,
          subitems: [
            { title: '회원관리', link: '/index/manage' },
            { title: '지수관리', link: '/index/register'  },
            { title: 'ETP관리', link: '/index/develop'  },
          ],
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
  top: 42px;
  bottom: 0;
  width: 300px;
}

</style>