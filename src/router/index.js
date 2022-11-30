//라우터 설정은 여기서.
// 사용 모듈 및 설정한 vue파일들 import 해주고 작업해주기
//네
import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../components/Home.vue'
import Login from '../components/Login.vue'
import NotFound from '../components/NotFound.vue'
import Board from '../components/Board.vue'
import Card from '../components/Card.vue'

Vue.use(VueRouter)

//로컬 토큰 확인
const requireAuth = (to, from, next) => {
  const isAuth = localStorage.getItem('token')
  const loginPath = `/login?rPath=${encodeURIComponent(to.path)}`
  isAuth ? next() : next(loginPath)
}

const router = new VueRouter({
  mode: "history",
  routes: [
    { path: '/', component: Home, beforeEnter: requireAuth },
    { path: '/login', component: Login},
    { path: '/b/:bid', component: Board, beforeEnter: requireAuth, children: [
      { path: 'c/:cid', component: Card, beforeEnter: requireAuth }
    ]},
    { path: '*', component: NotFound }
  ]
})

export default router
