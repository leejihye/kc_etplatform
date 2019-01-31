import  Home        from './components/Home/Home.vue'
import  IndexMain   from './components/Home/Index/IndexMain.vue'
import  AdminMain   from './components/admin/AdminMain.vue'
import  Notice      from './components/admin/Notice/Notice.vue'
import  ChangeNotice      from './components/admin/ChangeNotice/ChangeNotice.vue'
import  SpecInfo      from './components/admin/SpecInfo/SpecInfo.vue'
import  Chart       from './components/admin/Chart/Chart.vue'
import  ChartTerm   from './components/admin/Chart/ChartTerm.vue'
import  Users       from './components/admin/Users/Users.vue'

export const routes = [
  {
    path : '/', 
    component: Home,
    children: [
        {
            path : 'index',
            component: IndexMain
        },
    ]
  },
  {
    path : '/admin',
    component: AdminMain,
    children: [
        {
            path : 'notice',
            component: Notice
        },
        {
            path : 'changenotice',
            component: ChangeNotice
        },
        {
            path : 'specinfo',
            component: SpecInfo
        },
        {
            path : 'chart',
            component: Chart
        },
        {
            path : 'chartterm',
            component: ChartTerm
        },
        {
            path : 'users',
            component: Users
        },
    ]
  },
  
]
