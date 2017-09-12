import Vue from 'vue'
import { 
  Button, 
  Table, 
  TableColumn,
  Form,
  FormItem,
  Dropdown,
  DropdownMenu,
  DropdownItem
} from 'element-ui'
import App from './App.vue'

Vue.use(Button)
Vue.use(Table)
Vue.use(TableColumn)
Vue.use(Form)
Vue.use(FormItem)
Vue.use(Dropdown)
Vue.use(DropdownMenu)
Vue.use(DropdownItem)

new Vue({
  el: '#app',
  render: h => h(App)
})
