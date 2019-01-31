<template>
<aside>
  <router-link to="/index"><h3>INDEX</h3></router-link>
  <ul>
    <li><a href="#">지수관리</a></li>
    <li><a href="#" class="active">지수등록</a></li>
    <li><a href="#">지수개발</a></li>
  </ul>
  <hr>

  <h3>ETP</h3>
  <ul>
    <li><a href="#">ETP 운용 관리</a></li>
    <li><a href="#">ETP 신규 등록</a></li>
    <li><a href="#">계약지수 목록</a></li>
  </ul>
  <hr>

  <h3>TODAY</h3>
  <hr>

  <h3>SUPPORT</h3>
  <ul>
    <li><a href="#">기초지수코드정보</a></li>
    <li><a href="#">지수채용주식수</a></li>
    <li><a href="#">기초지수종가</a></li>
    <li><a href="#">추적오차율 괴리</a></li>
  </ul>
  <hr>

  <h3>ADMIN</h3>
  <ul>
    <li><a href="#">회원관리</a></li>
    <li><a href="#">지수관리</a></li>
    <li><a href="#">ETP관리</a></li>
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
        dashboard1: function() {
            console.log('dashboard1');
        },
        dashboard2: function() {
            console.log('dashboard2');
        },
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