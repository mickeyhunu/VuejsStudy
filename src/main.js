//main에서 사용할 모듈들 import?
import Vue from 'vue'
import router from './router'
import App from './App.vue'
import store from './store'

new Vue({
  el: '#app',
  router,
  store,
  render: h => h(App)
})