function getElementsByClass(oElm, strTagName, strClassName){
	var arrElements = (strTagName == "*" && oElm.all)? oElm.all : oElm.getElementsByTagName(strTagName);
	var arrReturnElements = new Array();
	strClassName = strClassName.replace(/\-/g, "\\-");
	var oRegExp = new RegExp("(^|\\s)" + strClassName + "(\\s|$)");
	var oElement;
	for(var i=0; i<arrElements.length; i++){
		oElement = arrElements[i];
		if(oRegExp.test(oElement.className)){
			arrReturnElements.push(oElement);
		}
	}
	return (arrReturnElements)
}

var initdelay=600;
var menudelay=550;


var timeincrement=12;
var rollspeed=15;
var unhidespeed=3;

var mainflag=0;
var timeflag=0;
var hidepos=0;
var rollno=0;
var oldrollno=-1;

var ptotal;
var divheight;
var coverheight;
var ptimeoutID;

function initRoll()
{

		product=getElementsByClass(document,"div","products");
	
		ptotal=product.length;
	
		for(i=0;i<ptotal;i++)
		{
			pname="pid_"+i;
			product[i].id=pname;
		}
	
		coverheight=document.getElementById("pmenuitems").offsetHeight + 30;
		setTimeout('doUnhide()',initdelay);

}



function pRoll(itemno)
{
	if(itemno!=rollno)
	{
		rollno=itemno;	
		ptimeoutID=setTimeout('pChange()',menudelay);
	}
}


function pOut()
{
	clearTimeout(ptimeoutID);
}


function pChange()
{
	if(rollno!=oldrollno)
	{
	mainflag=1;
	oldrollno=rollno;
	document.getElementById("dhtmldiv").style.visibility="hidden";
	pname="pid_"+rollno;
	document.getElementById("dhtmldiv").innerHTML=document.getElementById(pname).innerHTML;
	divheight=document.getElementById("dhtmldiv").offsetHeight;
	if(timeflag==0)
	{
		timeflag=1;
		setPos();
	}
	setTimeout('document.getElementById("dhtmldiv").style.visibility="visible"',timeincrement);
	}
}



function setPos()
{
	if(divheight>0)	pheight="-"+divheight+"px";
	else pheight="0px";
	if(divheight>-10)
	{
		document.getElementById("dhtmldiv").style.top=pheight;
		divheight-=rollspeed;
		setTimeout('setPos()',timeincrement);
	}

	else
	{
		document.getElementById("dhtmldiv").style.top="10px";
		timeflag=0;
	}
}


function doUnhide()
{
	if(hidepos<coverheight)
	{
		hiddentop=hidepos+"px";
		document.getElementById("pmenuhide").style.top=hiddentop;
		hidepos+=unhidespeed;
		setTimeout('doUnhide()',timeincrement);
	}
	
	else
	{
		if(mainflag==0)setTimeout('pChange()',5*timeincrement);
		
	}

}