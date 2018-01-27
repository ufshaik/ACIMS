// UDMv4.42 // Sliding Menus extension v1.02 //
/***************************************************************\
  ULTIMATE DROP DOWN MENU Version 4.42 by Brothercake
  http://www.udm4.com/
\***************************************************************/
/***************************************************************\
* Set animation parameters
\***************************************************************/
var sliders=[
 "50", // duration ["milliseconds"]
 "15", // resolution ["frames"]
 "ttb", // opening transition ["ltr"|"rtl"|"ttb"|"btt"|"tlbr"|"trbl"|"bltr"|"brtl"|"cve"|"che"|"ctc"|"rnd"|"none"]
 "btt", // closing transition [same choices]
 "no", // allow cross transitions ["yes"|"no"]
 ];
/***************************************************************\
\***************************************************************/



//global object
var sm=new Object;
//identify it to menu script
//and exclude mac/ie5 (and msn), old gecko builds, konqueror, or Opera earlier than 7.5
um.sim=(!(um.mie||um.og||um.k||(um.o7&&!um.o75)));
//copy array to shortcut name
sm.v=sliders;
//menu objects
sm.m={'o':null,'c':null};
//current menu objects
sm.c={'o':null,'c':null};
//timers
sm.t={'o':null,'c':null};
//counters
sm.s={'o':1,'c':1};
//default clip value - win/ie and safari don't like "auto"
//but old mac/ie [and opera 7] don't like rect(auto..)
sm.n=(um.omie||um.o7)?'auto':'rect(auto,auto,auto,auto)';
//array of direction codes
sm.ds=['ltr','rtl','ttb','btt','tlbr','trbl','bltr','brtl','cve','che','ctc'];
//convert number values to numbers
for(var i=0;i<2;i++){sm.v[i]=um.pi(sm.v[i]);}
//halve the resolution for mac browsers
//so that it works at a useable speed
if(/mac/.test(um.u)){sm.v[1]=sm.v[1]/2;}

//get parent node parent node shortcut function
sm.gpn=function(node){return node.parentNode.parentNode;};

//if supported
if(um.sim)
{
 //add receiver for menu opening event
 um.addReceiver(menuOpening,'060');
 //add receiver for menu closing event
 um.addReceiver(menuClosing,'070');
}

//menu opening event receiver
function menuOpening(menu)
{
 //don't do anything if has focus flag is set
 //ie, don't do transitions for keyboard navigation
 if(um.ha) { return false; }
 //if an timer is already going
 if(sm.t.o!=null)
 {
  //clip current menu to auto so that child menu is visible
  clipLayers(sm.c.o,sm.n);
  //reset timer and counter
  //so that new menu gets a full transition
  clearInterval(sm.t.o);
  sm.t.o=null;
  sm.s.o=1;
 }
 //else if a close timer is going
 else if(sm.t.c!=null)
 {
  //if smultaneous transitions are not allowed
  if(sliders[4]=='no')
  {
   //cancel the closing timer
   clearInterval(sm.t.c);
   sm.t.c=null;
   sm.s.c=1;
  }
  //if smultaneous transitions are not allowed
  //or the menus are not siblings
  //(because there's a condition in closing function for that)
  if(sliders[4]=='no'||sm.gpn(sm.m.c)!=sm.gpn(menu))
  {
   //get menus from opening menu's parent
   sm.tmp=um.gu(sm.gpn(menu));
   sm.tmpLen=sm.tmp.length;
   //if there are any
   if(sm.tmpLen>0)
   {
    //for each menu
    for(i=0;i<sm.tmpLen;i++)
    {
     //if menu is not this one
     if(sm.tmp[i]!=menu)
     {
      //remove it
      removeMenu(sm.tmp[i]);
     }
    }
   }
  }
 }

 //select random or defined direction
 sm.d=(sm.v[2]=='rnd')?sm.ds[Math.floor(Math.random()*sm.ds.length)]:sm.v[2];
 //if effect is not none
 if(sm.d!='none')
 {
  //if select-element hiding is being used
  if((um.wie50&&um.e[13]=='default')||(um.wie&&um.e[13]=='hide'))
  {
   //hide selects
   um.n.ts('hidden');
  }
  //clip layers to nothing
  clipLayers(menu,'rect(0,0,0,0)');
  //copy menu object
  sm.m.o=menu;
  //store menu dimensions
  //values are increased slightly to accomodate potential shadow filter
  //otherwise shadow would be clipped away
  //this will allow for a depth up to 5 pixels
  //I doubt anyone would go bigger than that
  //but I don't want it to be much more here
  //because it's animating empty space,
  //which would be noticeable at high resolutions
  sm.sz={x:menu.offsetWidth+5,y:menu.offsetHeight+5};
  //animate menu
  sm.t.o=setInterval('animateMenu(sm.m.o,sm.d,"o",sm.sz)',sm.v[0]/sm.v[1]);
 }
 return true;
};

//menu closing event receiver
function menuClosing(menu)
{
 //don't do anything if has focus flag is set
 //ie, don't do transitions for keyboard navigation
 if(um.ha) { return false; }
 //if an open timer is going
 if(sm.t.o!=null)
 {
  //if mousedown flag is set
  if(um.mf)
  {
   //remove opening menu
   removeMenu(sm.m.o);
   //cancel the open timer
   clearInterval(sm.t.o);
   sm.t.o=null;
   sm.s.o=1;
  }
  //this is so that clicking the document
  //causes an immediate reset, as it should
  //else if the two menus are siblings
  else if(sm.gpn(sm.m.o)==sm.gpn(menu))
  {
   //if a close timer is also going
   if(sm.t.c!=null)
   {
    //remove the menu that's opening
    removeMenu(sm.m.o);
   }
   //cancel the open timer
   clearInterval(sm.t.o);
   sm.t.o=null;
   //set close counter as inverse of open counter
   //so it segues as part of the same transition
   sm.s.c=sm.v[1]-sm.s.o;
   //then reset open count
   sm.s.o=1;
  }
  //otherwise
  else
  {
   //remove the menu that's closing
   removeMenu(menu);
  }
 }
 //if mousedown flag is set
 if(um.mf)
 {
  //remove closing menu
  removeMenu(menu);
  //cancel the close timer
  clearInterval(sm.t.c);
  sm.t.c=null;
  sm.s.c=1;
 }
 //this is so that clicking the document
 //causes an immediate reset, as it should
 //else if no close timer is going
 else if(sm.t.c==null)
 {
  //select random or defined direction
  sm.d=(sm.v[3]=='rnd')?sm.ds[Math.floor(Math.random()*sm.ds.length)]:sm.v[3];
  //if effect is not none
  if(sm.d!='none')
  {
   //copy menu object
   sm.m.c=menu;
   //store menu dimensions
   //values are increased slightly to accomodate potential shadow filter
   //otherwise shadow would be clipped away
   //this will allow for a depth up to 5 pixels
   //I doubt anyone would go bigger than that
   //but I don't want it to be much more here
   //because it's animating empty space,
   //which would be noticeable at high resolutions
   sm.sz={x:menu.offsetWidth+5,y:menu.offsetHeight+5};
   //animate menu
   sm.t.c=setInterval('animateMenu(sm.m.c,sm.d,"c",sm.sz)',sm.v[0]/sm.v[1]);
  }
  //otherwise
  else
  {
   //just remove the menu
   removeMenu(menu);
  }
 }
 return true;
};


//animate clip on menu and related nodes
function animateMenu(menu,dir,ide,siz)
{
 //store current menu object
 sm.c[ide]=menu;

 //if this is a closing transition
 if(ide=='c')
 {
  //if effect is not none
  if(dir!='none')
  {
   //convert to upper case
   dir=dir.toUpperCase();
  }
 }
 //compile clip string
 sm.clip='rect('
  + (/(btt|bltr|brtl)/.test(dir)?(siz.y-((siz.y/sm.v[1])*sm.s[ide])):(/(TTB|TLBR|TRBL)/.test(dir)?((siz.y/sm.v[1])*sm.s[ide]):(/(che|ctc)/.test(dir)?((siz.y/2)-((siz.y/sm.v[1])*(sm.s[ide]/2))):(/(CHE|CTC)/.test(dir)?((siz.y/sm.v[1])*(sm.s[ide]/2)):0))))
  + 'px,'
  + (/(ltr|tlbr|bltr)/.test(dir)?((siz.x/sm.v[1])*sm.s[ide]):(/(RTL|TRBL|BRTL)/.test(dir)?(siz.x-((siz.x/sm.v[1])*sm.s[ide])):(/(cve|ctc)/.test(dir)?((siz.x/2)+((siz.x/sm.v[1])*(sm.s[ide]/2))):(/(CVE|CTC)/.test(dir)?(siz.x-((siz.x/sm.v[1])*(sm.s[ide]/2))):siz.x))))
  + 'px,'
  + (/(ttb|tlbr|trbl)/.test(dir)?((siz.y/sm.v[1])*sm.s[ide]):(/(BTT|BLTR|BRTL)/.test(dir)?(siz.y-((siz.y/sm.v[1])*sm.s[ide])):(/(che|ctc)/.test(dir)?((siz.y/2)+((siz.y/sm.v[1])*(sm.s[ide]/2))):(/(CHE|CTC)/.test(dir)?(siz.y-((siz.y/sm.v[1])*(sm.s[ide]/2))):siz.y))))
  + 'px,'
  + (/(rtl|trbl|brtl)/.test(dir)?(siz.x-((siz.x/sm.v[1])*sm.s[ide])):(/(LTR|TLBR|BLTR)/.test(dir)?((siz.x/sm.v[1])*sm.s[ide]):(/(cve|ctc)/.test(dir)?((siz.x/2)-((siz.x/sm.v[1])*(sm.s[ide]/2))):(/(CVE|CTC)/.test(dir)?((siz.x/sm.v[1])*(sm.s[ide]/2)):0))))
  + 'px)';
 //clip layers to computed value
 clipLayers(menu,sm.clip);
 //increase relevant counter
 sm.s[ide]++;
 //if counter has finished or effect is "none"
 //*** this is damage limitation - really it shouldn't have to go through this one loop
 if(sm.s[ide]>(sm.v[1]+1) || dir=='none')
 {
  //clear timeout and reset counter
  clearInterval(sm.t[ide]);
  sm.t[ide]=null;
  sm.s[ide]=1;
  //reset current menu object
  sm.c[ide]=menu;
  //clip layers to auto so that child menu is visible
  clipLayers(menu,sm.n);
  //if this is a closing timer
  if(ide=='c')
  {
   //remove menu
   removeMenu(menu);
   //if select-element hiding is being used
   if((um.wie50&&um.e[13]=='default')||(um.wie&&um.e[13]=='hide'))
   {
    //if this is a main navbar link and no open timer is going
    if(sm.gpn(menu).className=='udm'&&sm.t.o==null)
    {
     //show selects
     um.n.ts('visible');
    }
   }
  }
 }
};

//clip menu and related layers
function clipLayers(layer,clipBy)
{
 //set clip on menu
 layer.style.clip=clipBy;
 //if shadow exists
 layer.s=getRelatedLayer(layer,'udmS');
 if(layer.s!=null)
 {
  //set clip on shadow
  layer.s.style.clip=clipBy;
 }
 //if cover layer exists
 layer.c=getRelatedLayer(layer,'udmC');
 if(layer.c!=null)
 {
  //set clip on shadow
  layer.c.style.clip=clipBy;
 }
};

//remove a menu and related nodes
function removeMenu(menu)
{
 //restore layer clip
 clipLayers(menu,sm.n);
 //if shadow exists
 menu.s=getRelatedLayer(menu,'udmS');
 if(menu.s!=null)
 {
  //remove the node
  menu.parentNode.removeChild(menu.s);
 }
 //if cover layer exists
 menu.c=getRelatedLayer(menu,'udmC');
 if(menu.c!=null)
 {
  //remove the node
  menu.parentNode.removeChild(menu.c);
 }
 //hide menu
 menu.style.visibility='hidden';
 menu.style.display='none';
};


//get related layer
function getRelatedLayer(menuNode,menuClass)
{
 //look for node
 sm.node=menuNode.parentNode.lastChild;
 //if this is ie55 and iframe is in use
 //and we're looking for a shadow node
 //or if the last child is a text node
 if((um.wie55&&(um.e[13]=='default'||um.e[13]=='iframe')&&menuClass=='udmS')||sm.node.nodeName=='#text')
 {
  //we want the previous sibling
  sm.node=sm.node.previousSibling;
 }
 //if there's a node with a classname there - ie, one we added
 if(sm.node.className)
 {
  //and it has the right class name
  if(sm.node.className.indexOf(menuClass)!=-1)
  {
   //return the node
   return sm.node;
  }
  else { return null; }
 }
 else { return null; }
};