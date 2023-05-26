// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

let a;
let date;
let time;
const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };    
setInterval(() => {
a = new Date();
date = a.toLocaleDateString(undefined,options);
time = ('0'+ a.getHours()).slice(-2) + ":" +('0'+ a.getMinutes()).slice(-2) +":"+ ('0'+ a.getSeconds()).slice(-2);
document.getElementById('time').innerHTML= date  + " on " + time;
},1000);