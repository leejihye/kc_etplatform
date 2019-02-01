<template>
<aside>
  <router-link to="/index/manage"><h3>INDEX</h3></router-link>
  <ul>
    <li><router-link to="/index/manage">지수관리</router-link></li>
    <li><router-link to="/index/register">지수등록</router-link></li>
    <li><router-link to="/index/develop">지수개발</router-link></li>
  </ul>
  <hr>

  <router-link to="/etp/manage"><h3>ETP</h3></router-link>
  <ul>
    <li><router-link to="/etp/manage">ETP 운용 관리</router-link></li>
    <li><router-link to="/etp/register">ETP 신규 등록</router-link></li>
    <li><router-link to="/etp/contract">계약지수 목록</router-link></li>
  </ul>
  <hr>

  <router-link to="/"><h3>TODAY</h3></router-link>
  <hr>

  <router-link to="/"><h3>SUPPORT</h3></router-link>
  <ul>
    <li><router-link to="/">기초지수코드정보</router-link></li>
    <li><router-link to="/">지수채용주식수</router-link></li>
    <li><router-link to="/">기초지수종가</router-link></li>
    <li><router-link to="/">추적오차율 괴리</router-link></li>
  </ul>
  <hr>

  <router-link to="/"><h3>ADMIN</h3></router-link>
  <ul>
    <li><router-link to="/">회원관리</router-link></li>
    <li><router-link to="/">지수관리</router-link></li>
    <li><router-link to="/">ETP관리</router-link></li>
  </ul>
  <hr>
</aside>
</template>

<script>
export default {
    data() {
        return {

        };
    },
    methods: {
    }
}
</script>

<style scoped>
aside {
  /* for fixed side bar */
  position: fixed;
  top: 62px;
  bottom: 0;
  width: 200px;  /* 너비 고정 */
  background-color: #fff;
  box-shadow: 0 2px 2px rgba(0, 0, 0, 0.05), 0 1px 0 rgba(0, 0, 0, 0.05);

}
/* aside navigation */
aside > ul {
  width: 200px;
}
aside > ul > li > a {
  display: block;
  padding: 10px 0 0px 10px;
  color: #777;
}
aside > ul > li > a.active {
  color: rgb(79, 79, 233);
}
aside > ul > li > a:hover:not(.active) {

}

aside h3 {
  padding: 10px 0 0px 20px;
  color: #888;
}

aside > hr {
  margin-top: 10px;
  margin-left: 20px;
  width: 160px;
  height: 1px;
  border: none;
  background-color:#eee;
}

</style>