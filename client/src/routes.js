// 사용자
import  Home        from './components/Home/Home.vue'
import  IndexManageMain   from './components/Home/Index/Manage/IndexManageMain.vue'
import  IndexRegisterMain   from './components/Home/Index/Register/IndexRegisterMain.vue'
import  IndexDevelopMain   from './components/Home/Index/Develop/IndexDevelopMain.vue'
import  EtpManageMain   from './components/Home/Etp/Manage/EtpManageMain.vue'
import  EtpRegisterMain   from './components/Home/Etp/Register/EtpRegisterMain.vue'
import  EtpContractMain   from './components/Home/Etp/Contract/EtpContractMain.vue'
// 관리자
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
]
