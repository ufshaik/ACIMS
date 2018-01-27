﻿/////////////////////////////////////////////////////
// Purple Monkey
//
//  Drop Down Functions
//
//  For use w/ BrotherCake's Ultimate Drop Down Menu
//  in popup mode.
//
// Created By: Brandon Tibbetts
//  Created On: ?
//
// Last Modified On: 08/15/2005
// Last Modified By: Ray Schauer
//
//
/////////////////////////////////////////////////////
// Add Reciever to initialize our Menu
um.addReceiver(initMenu,'010');
// Functions
function openMenu(id,trigger,x,y) {
 //if the menu is ready
 if(um.ready) {
  //open and position the menu
  um.activateMenu(
   id,
   (um.getRealPosition(trigger.parentNode,'x')+trigger.parentNode.offsetWidth-400+x)+'px',
   (um.getRealPosition(trigger.parentNode,'y')+trigger.parentNode.offsetHeight-18+y)+'px'
  );
 }
}
function closeMenu(id,trigger) {
 //if the menu is ready
 if(um.ready) {
  //close menu
  um.deactivateMenu(id);
 }
}
function initMenu(eventObject) {
 if(um.ready) {
  if (document.getElementById('udm').className != "udm") {
   document.getElementById('udm').className = "udm";
  }
 }
}