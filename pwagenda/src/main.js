import Vue from 'vue'
import './plugins/vuetify'
import App from './App.vue'
import 'roboto-fontface/css/roboto/roboto-fontface.css'
import 'material-design-icons-iconfont/dist/material-design-icons.css'

import VueRouter from 'vue-router'

Vue.config.productionTip = false

import Vuetify from 'vuetify'

Vue.use(VueRouter)
Vue.use(Vuetify)

import VueCtkDateTimePicker from 'vue-ctk-date-time-picker';
import 'vue-ctk-date-time-picker/dist/vue-ctk-date-time-picker.css';

Vue.component('VueCtkDateTimePicker', VueCtkDateTimePicker);

import Servico from './components/Servico.vue'
import Index from './components/Index.vue'

const routes = [
  { path: '/', name: 'home', component: Index },
  { path: '/Servico/', component: Servico }
];

Vue.prototype.$url_api = 'http://192.168.0.3/pAPI_WSD_Agenda'

const router = new VueRouter({
  routes,
  mode: 'history'
})

new Vue({
  render: h => h(App),
  router
}).$mount('#app')
