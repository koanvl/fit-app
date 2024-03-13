// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import AlertController from "./alert_controller"
application.register("alert", AlertController)

import CategoryAutosubmitController from "./category_autosubmit_controller"
application.register("category-autosubmit", CategoryAutosubmitController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import StickyHeaderController from "./sticky_header_controller"
application.register("sticky-header", StickyHeaderController)

import TomSelectController from "./tom_select_controller"
application.register("tom-select", TomSelectController)
