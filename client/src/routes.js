// 사용자
import  Home        from './components/Home/Home.vue'
import  IndexManageMain   from './components/Home/Index/Manage/IndexManageMain.vue'
import  IndexRegisterMain   from './components/Home/Index/Register/IndexRegisterMain.vue'
import  IndexDevelopMain   from './components/Home/Index/Develop/IndexDevelopMain.vue'
import  EtpManageMain   from './components/Home/Etp/Manage/EtpManageMain.vue'
import  EtpRegisterMain   from './components/Home/Etp/Register/EtpRegisterMain.vue'
import  EtpContractMain   from './components/Home/Etp/Contract/EtpContractMain.vue'
// 관리자
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
        // INDEX
        {   path : 'index/manage',
            component: IndexManageMain,
        },
        {   path : 'index/register',
            component: IndexRegisterMain,
        },
        {   path : 'index/develop',
            component: IndexDevelopMain,
        },
        // ETP
        {   path : 'etp/manage',
            component: EtpManageMain,
        },
        {   path : 'etp/register',
            component: EtpRegisterMain,
        },
        {   path : 'etp/contract',
            component: EtpContractMain,
        },
    ]
  },
  {
    path : '/admin',
    component: AdminMain,
    children: [
        {   path : 'notice',
            component: Notice
        },
        {   path : 'changenotice',
            component: ChangeNotice
        },
        {   path : 'specinfo',
            component: SpecInfo
        },
        {   path : 'chart',
            component: Chart
        },
        {   path : 'chartterm',
            component: ChartTerm
        },
        {   path : 'users',
            component: Users
        },
    ]
  },
  
]
