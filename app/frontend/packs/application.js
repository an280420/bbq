import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
ActiveStorage.start()

var jQuery = require('jquery')
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

import 'bootstrap'
import '../styles/application'
import '../scripts/application'
import '../scripts/maps'
import '../scripts/lightbox'

const images = require.context('../images', true)
