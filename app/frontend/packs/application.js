import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
ActiveStorage.start()


import 'bootstrap'
import '../styles/application'
import '../scripts/application'
const images = require.context('../images', true)
