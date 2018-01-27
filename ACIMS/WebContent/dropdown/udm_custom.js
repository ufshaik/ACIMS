﻿// UDMv4.44 //
///////////////////////////////////////////////////////////////////
var um={'menuClasses':[],'itemClasses':[],'menuCode':[]};
///////////////////////////////////////////////////////////////////
//                                                               //
//  ULTIMATE DROP DOWN MENU Version 4.44 by Brothercake          //
//  http://www.udm4.com/                                         //
//                                                               //
//  This script may not be used or distributed without license   //
//                                                               //
///////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////
// CORE CONFIGURATION                                            //
///////////////////////////////////////////////////////////////////

//path to images folder
um.baseSRC = "";

//navbar orientation
um.orientation = [
 "popup", // alignment ["vertical"|"horizontal"|"popup"|"expanding"]
 "left",  // h align ["left"|"right"]
 "top",  // v align ["top"|"bottom"]
 "absolute", // positioning ["relative"|"absolute"|"fixed"|"allfixed"]
 "0", // x position ["em"|"ex"|"px"|"0"]
 "0", // y position ["em"|"ex"|"px"|"0"]
 "1000",  // z order ["0" to "10000"] (menu takes 20000 headroom)
 ];

//navbar list output
um.list = [
 "flexible", // horizontal overflow ["rigid"|"flexible"]
 "yes",  // -SPARE-
 "no",   // -SPARE-
 ];

//menu behaviors
um.behaviors = [
 "0",  // open timer ["milliseconds"|"0"]
 "250",  // close timer ["milliseconds"|"never"|"0"]
 "yes",  // reposition menus to stay inside the viewport ["yes"|"no"]
 "default", // manage windowed controls for win/ie ["default","hide","iframe","none"]
 ];

//reset behaviors
um.reset = [
 "yes",  // reset from document mouse click ["yes"|"no"]
 "yes",  // reset from window resize ["yes"|"no"]
 "yes",  // reset from text resize ["yes"|"no"]
 "no",  // reset after following link ["yes"|"no"]
 ];

//horizontal continuation strip
um.hstrip = [
 "none",  // background ["color"|"#hex"|"rgb()"|"image.gif"|"none"]
 "yes",  // copy navbar item margin-right to margin-bottom ["yes"|"no"]
 ];


///////////////////////////////////////////////////////////////////
// MODULE SETTINGS                                               //
///////////////////////////////////////////////////////////////////

//keyboard navigation [comment out or remove if not using]
um.keys = [
 "38",  // up ["n"] ("38" = up arrow key)
 "39",  // right ["n"] ("39" = right arrow key)
 "40",  // down ["n"] ("40" = down arrow key)
 "37",  // left ["n"] ("37" = left arrow key)
 "123",  // hotkey ["n"] ("38" = F12]
 "none",  // hotkey modifier ["none"|"shiftKey"|"ctrlKey"|"altKey"|"metaKey"]
 "27",  // escape ["n"|"none"] ("27" = escape key)
 "document.getElementsByTagName('a')[0]", // exit focus ["js-expression"]
 ];


///////////////////////////////////////////////////////////////////
// NAVBAR DEFAULT STYLES                                         //
///////////////////////////////////////////////////////////////////

//styles which apply to the navbar
um.navbar = [
 "-6",  // nav -> menu x-offset (+-)["n" pixels]
 "-11",  // nav -> menu y-offset (+-)["n" pixels]
 "7.5em", // width ["em"|"ex"|"px"] (vertical navbar only - horizontal navbar items have "auto" width) ("%" doesn't work right)
 ];

//styles which apply to each navbar item
um.items = [
 "1",  // margin between items ["n" pixels]
 "1",  // border size ["n" pixels] (single value only)
 "collapse", // border collapse ["collapse"|"separate"] (only applies when margin = "0")
 "#ead4a4 #edbb85 #edbb85 #ead4a4",// border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
 "none", // border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; be careful with using "none")
 "#ead4a4 #ead4a4 #fae4b4 #fae4b4",// hover/focus border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
 "none", // hover/focus border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; be careful with using "none")
 "#ead4a4 #edbb85 #edbb85 #ead4a4",// visited border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
 "none",// visited border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; be careful with using "none")
 "9",  // left/right padding ["n" pixels] (single value only)
 "5",  // top/bottom padding ["n" pixels] (single value only)
 "#ffc",  // background ["color"|"#hex"|"rgb()"|"image.gif"]
 "#ffe",  // hover/focus background ["color"|"#hex"|"rgb()"|"image.gif"]
 "#ffc",  // visited background ["color"|"#hex"|"rgb()"|"image.gif"]
 "75%",  // font size ["em"|"ex"|"%"|"px"|"pt"|"absolute-size"|"relative-size"]
 "tahoma,sans-serif",// font family ["font1,font2,font3"] (always end with a generic family name)
 "bold",  // font weight ["normal"|"bold"|"bolder"|"lighter|"100" to "900"]
 "none",  // text decoration ["none"|"underline"|"overline"|"line-through"]
 "left",  // text-align ["left"|"right"|"center"]
 "#ffffff", // color ["color"|"#hex"|"rgb()"]
 "#ffdf93", // hover/focus color ["color"|"#hex"|"rgb()"]
 "#ffffff", // visited color ["color"|"#hex"|"rgb()"]
 "normal", // font-style ["normal"|"italic"|"oblique"]
 "normal", // hover/focus font-style ["normal"|"italic"|"oblique"]
 "normal", // visited font-style ["normal"|"italic"|"oblique"]
 "letter-spacing:1px !important;",// additional link CSS (careful!)
 "",  // additional hover/focus CSS (careful!)
 "",  // additional visited CSS (careful!)
 "",// menu indicator character/image ["text"|"image.gif"|"none"]
 "",// menu indicator rollover character/image ["text"|"image.gif"|"none"] (must be same type)
 "7",  // clipping width of indicator image ["n" pixels] (only when using image arrows)
 "..",  // alt text of indicator image ["text"] (only when using image arrows)
 ];


///////////////////////////////////////////////////////////////////
// MENU STYLES                                                   //
///////////////////////////////////////////////////////////////////

//styles which apply to each menu
um.menus = [
 "-7",  // menu -> menu x-offset (+-)["n" pixels]
 "-12",  // menu -> menu y-offset (+-)["n" pixels]
 "1",  // border size ["n" pixels] (single value only)
 "#1B99E5", // border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
 "none none solid none",  // border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; be careful with using "none")
 "143px", // width ["em"|"ex"|"px"]
 "0",  // padding ["n" pixels] (single value only)
 "transparent", // background ["color"|"#hex"|"rgb()"|"image.gif"]
 "",   // additional menu CSS (careful!) (you can use a transition here but *not* a static filter)
 "#004974",  // shadow background ["color"|"#hex"|"rgb()"|"image.gif"|"none"]
 "0",  // shadow offset (+-) ["em"|"px"|"pt"|"%"|"0"]
 "filter:alpha(opacity=80);opacity:.80;",// additional shadow layer CSS (if you use a Microsoft.Shadow filter here then Win/IE5.5+ will do that *instead* of default shadow)
 ];

//styles which apply to each menu item
um.menuItems = [
 "0",    // margin around items ["n" pixels] (single value only; margins are like table cellspacing)
 "1",    // border size ["n" pixels] (single value only)
 "separate",   // border collapse ["collapse"|"separate"] (only applies when margin = "0")
 "#1B99E5",   // border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
 "solid solid none solid",    // border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; be careful with using "none")
 "#1B99E5",   // hover/focus border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
 "solid solid none solid ",   // hover/focus border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; be careful with using "none")
 "#1B99E5",   // visited border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
 "solid solid none solid ",   // visited border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; be careful with using "none")
 "7",    // left/right padding ["n" pixels] (single value only)
 "5",    // top/bottom padding ["n" pixels] (single value only)
 "transparent",  // background ["color"|"#hex"|"rgb()"|"image.gif"]
 "#004974",   // hover/focus background ["color"|"#hex"|"rgb()"|"image.gif"]
 "transparent",  // visited background ["color"|"#hex"|"rgb()"|"image.gif"]
 "11px",    // font size ["em"|"ex"|"%"|"px"|"pt"|"absolute-size"|"relative-size"]
 "helvetica,sans-serif",// font family ["font1,font2,font3"] (always end with a generic family name)
 "normal",   // font weight ["normal"|"bold"|"bolder"|"lighter|"100" to "900"]
 "none",    // text decoration ["none"|"underline"|"overline"|"line-through"]
 "left",    // text-align ["left"|"right"|"center"]
 "#ffffff",   // color ["color"|"#hex"|"rgb()"]
 "#ffdf93",   // hover/focus color ["color"|"#hex"|"rgb()"]
 "#ffffff",   // visited color ["color"|"#hex"|"rgb()"]
 "normal",   // font-style ["normal"|"italic"|"oblique"]
 "normal",   // hover/focus font-style ["normal"|"italic"|"oblique"]
 "normal",   // visited font-style ["normal"|"italic"|"oblique"]
 "",     // additional link CSS (careful!)
 "text-decoration:underline;",     // additional hover/focus CSS (careful!)
 "/menu_arrows.gif",     // additional visited CSS (careful!)
 "/menu_arrows.gif",    // submenu indicator character/image ["text"|"image.gif"|"none"]
 "/menu_arrows.gif",    // submenu indicator rollover character/image ["text"|"image.gif"|"none"] (must be the same type)
 "11",    // clipping width of indicator image ["n" pixels] (only when using image arrows)
 ">>",    // alt text of indicator image ["text"] (only when using image arrows)
 ];