/*******************************************************
MESSAGE CENTER 5.5
(c) 1997-2004, Ryan Parman
Updated June 7, 2004
http://www.skyzyx.com
Distributed according to SkyGPL 2.1, http://www.skyzyx.com/license/
*******************************************************/

/*******************************************************
Import XML data
Public Domain
*******************************************************/
function importXML(mcXMLFile)
{
 if (document.implementation && document.implementation.createDocument) {
  xmlFeed = document.implementation.createDocument("", "", null);
  xmlFeed.async=false;
 }
 else if (window.ActiveXObject && document.all) {
  xmlFeed = new ActiveXObject("Microsoft.XMLDOM");
  xmlFeed.async=false;
  }
 else return false;
 xmlFeed.load(mcXMLFile);
 if (typeof xmlFeed != "undefined") return xmlFeed;
 else return false;
}

/*******************************************************
Primary Message Center function
*******************************************************/
function MessageCenter(zSpanID, zDelayMS)
{
 // INITIALIZATION
 var spanid=zSpanID;
 var delay=(zDelayMS) ? zDelayMS:4000;
 var messageArray=new Array();
 var count=0;
 var tOut=new Timer(this);
 var tOutRef, tOutRev;
 var prevAcct=0;
 var nextAcct=0;
 var newXMLMsg;
 // ADD A MESSAGE
 // The parameter must be an HTML or text string.
 this.addMessage=function(zMessage) {
  messageArray[messageArray.length]=zMessage;
 }
 // ADD AN XML FILE WITH MESSAGES
 // The parameter must be the relative or absolute URL to the XML file.
 this.addXMLMessage=function(zXMLPath) {
  newXMLMsg = importXML(zXMLPath);
  zMessage = newXMLMsg.getElementsByTagName('addXMLMessage');
  zMessageLen = zMessage.length;
  for (x=0; x<zMessageLen; x++) {
   messageArray[messageArray.length]=zMessage[x].firstChild.data;
  }
 }
 // START MESSAGE CENTER
 // Usually this will be called on the onload of the BODY tag.
 this.start=function() {
  if (document.getElementById) {
   document.getElementById(spanid).innerHTML=messageArray[count];
   count++;
   if (count > (messageArray.length-1)) count=0;
  }
  tOut.clearTimeout(tOutRev);
  tOutRef=tOut.setTimeout("start", delay);
  nextAcct=0;
  prevAcct=0;
 }
 // start() aliases:
 this.resume=function() { this.start(); }
 // PAUSE FUNCTION
 // This will pause the Message Center.  Optionally, passing a String parameter will display that string while paused.
 this.pause=function(stopMessage) {
  this.stopMsg=(stopMessage) ? stopMessage:null;
  tOut.clearTimeout(tOutRef);
  if (this.stopMsg) document.getElementById(spanid).innerHTML=this.stopMsg;
 }
 // pause() aliases:
 this.stop=function(stopMessage_stop) { this.pause(stopMessage_stop); }
 // CLEAR FUNCTION
 // This will stop the Message Center, and clear the element's contents.
 this.clear=function() {
  tOut.clearTimeout(tOutRef);
  document.getElementById(spanid).innerHTML='';
  count=0;
  nextAcct=0;
  prevAcct=0;
 }
 // clear() aliases:
 this.end=function() { this.clear(); }
 this.kill=function() { this.clear(); }
 this.NoDisassembleNumberFive=function() { this.clear(); }
 // NEXT FUNCTION
 // This will skip to the next message, and pause the Message Center.
 this.next=function() {
  if (nextAcct == 0) { nextAcct=1; prevAcct=1 }
  else if (nextAcct != 0) count++;
  if (count > (messageArray.length-1)) count=0;
  if (count < 0) count=messageArray.length-1;
  tOut.clearTimeout(tOutRef);
  tOutRef=tOut.setTimeout("start", delay);
  document.getElementById(spanid).innerHTML=messageArray[count];
 }
 // next() aliases:
 this.forward=function() { this.next(); }
 this.fwd=function() { this.next(); }
 // PREVIOUS FUNCTION
 // This will skip to the previous message, and pause the Message Center.
 this.previous=function() {
  if (prevAcct == 0) { prevAcct=1; count-=2; nextAcct=1; }
  else if (prevAcct != 0) count--;
  if (count > (messageArray.length-1)) count=0;
  if (count < 0) count=messageArray.length-1;
  tOut.clearTimeout(tOutRef);
  tOutRef=tOut.setTimeout("start", delay);
  document.getElementById(spanid).innerHTML=messageArray[count];
 }
 // previous() aliases:
 this.prev=function() { this.previous(); }
 this.back=function() { this.previous(); }
}

/*******************************************************
Utilizes Algorithm's Timer Class for Object-Oriented timeouts
http://www.undefined.net
*******************************************************/
function Timer() {
 this.obj = (arguments.length)?arguments[0]:window;
 return this;
}
Timer.prototype.setInterval = function(func, msec) {
 var i = Timer.getNew();
 var t = Timer.buildCall(this.obj, i, arguments);
 Timer.set[i].timer = window.setInterval(t,msec);
 return i;
}
Timer.prototype.setTimeout = function(func, msec) {
 var i = Timer.getNew();
 Timer.buildCall(this.obj, i, arguments);
 Timer.set[i].timer = window.setTimeout("Timer.callOnce("+i+");",msec);
 return i;
}
Timer.prototype.clearInterval = function(i) {
 if(!Timer.set[i]) return;
 window.clearInterval(Timer.set[i].timer);
 Timer.set[i] = null;
}
Timer.prototype.clearTimeout = function(i) {
 if(!Timer.set[i]) return;
 window.clearTimeout(Timer.set[i].timer);
 Timer.set[i] = null;
}
Timer.set = new Array();
Timer.buildCall = function(obj, i, args) {
 var t = "";
 Timer.set[i] = new Array();
 if(obj != window) {
  Timer.set[i].obj = obj;
  t = "Timer.set["+i+"].obj.";
 }
 t += args[0]+"(";
 if(args.length > 2) {
  Timer.set[i][0] = args[2];
  t += "Timer.set["+i+"][0]";
  for(var j=1; (j+2)<args.length; j++) {
   Timer.set[i][j] = args[j+2];
   t += ", Timer.set["+i+"]["+j+"]";
  }
 }
 t += ");";
 Timer.set[i].call = t;
 return t;
}
Timer.callOnce = function(i) {
 if(!Timer.set[i]) return;
 eval(Timer.set[i].call);
 Timer.set[i] = null;
}
Timer.getNew = function() {
 var i = 0;
 while(Timer.set[i]) i++;
 return i;
}