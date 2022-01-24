let cal = "<div id='calendar'></div>";
document.getElementById('calcontainer').innerHTML = cal;
let CalendarShow = 1;
const today = new Date(Date.now());
y = today.getFullYear();
m = today.getMonth()+1;
d = today.getDate();
if (m < 10) m = "0" + m;
if (d < 10) d = "0" + d;
minD = y + "/" + m + "/" + d;
maxD = (y + 1) + "/" + m + "/" + d;
let MinDate = minD;
let MaxDate = maxD;



function settingDate(date, day) {
    date = new Date(date);
    date.setDate(day);
    date.setHours(23);
    return date;
}
function getDatesBetween(date1, date2)
{
    let range1 = new Date(date1);
    let range2 = new Date(date2);   
    date1 = settingDate(date1, 31);
    date2 = settingDate(date2, 31);
   
    let dates = [];
    let temp;
    while (date1 <= date2)
    {
        if (date1.getDate() != 31)
        {
            temp = settingDate(date1, 0);
            if (temp >= range1 && temp <= range2) dates.push(temp);
            date1=settingDate(date1, 31);

        }
        else {
            temp = new Date(date1);
            if (temp >= range1 && temp <= range2) dates.push(temp);
            date1.setMonth(date1.getMonth() + 1);
        }
    }
       
    let content= "<div class='calendarBtns'><button id='calendarPrev' onclick='callprev();GetDate()' disabled>Prev</button>|<button id='calendarNext' onclick='callnext();GetDate()'>Next</button></div>";
    let WeekDays = [{ shortDay: "Mon", fullDay: "Monday" }, { shortDay: "Tue", fullDay: "Tuesday" }, { shortDay: "Wed", fullDay: "Wednesday" }, { shortDay: "Thu", fullDay: "Thursday" },{shortDay:"Fri", fullDay:"Friday"},{shortDay:"Sat", fullDay:"Saturday"}, { shortDay: "Sun", fullDay: "Sunday" }];
    let LastDate, firstDate;
    for (let i = 0; i < dates.length; i++)
    {
        let LastDate = dates[i];
        firstDate = new Date(dates[i].getFullYear(), dates[i].getMonth(), 1);
        content += "<div id='calendarTable_" + (i + 1) + "'class='calendarDiv'>";
        content += "<h2>" + firstDate.toString().split(" ")[1] + "-" + firstDate.getFullYear() + "</h2>";
        content += "<table class='CalendarTable'>";
         content += "<thead>";
        WeekDays.map(item => {
            content += "<th>" + item.shortDay + "</th>";
        });
        content += "</thead>";
        content += "<tbody>";
        let j = 1;
        let displayNum, idMonth;
       while (j <= LastDate.getDate())
        {
           content += "<tr>";
           for (let k = 0; k < 7; k++)
           {
              displayNum = j < 10 ? "0" + j : j;
               if (j == 1)
               {
                   
                   if (firstDate.toString().split(" ")[0] == WeekDays[k].shortDay)
                   {
                       content += "<td>" + displayNum + "</td>";
                       j++;
                   }
                    else
                   {
                       content += "<td></td>";
                       
                   }
               }
               else if (j > LastDate.getDate()) {
                   
                   content += "<td></td>";
               }
                    
               else
               {
                    content += "<td>" + displayNum + "</td>";
                    j++;
                }
               
           }
            content += "</tr>";
        
        }
        content += "</tbody>";
        content += "</table>";
        content += "</div>";
       
    }
    
    return content;
}
function callnext() {
    let alltable = document.getElementsByClassName("calendarDiv");
    document.getElementById("calendarPrev").disabled = false;
    CalendarShow++;
    if (CalendarShow <=alltable.length) {
     for (let i = 0; i < alltable.length; i++) {
        alltable[i].style.display ="none";
    }
    document.getElementById("calendarTable_" + CalendarShow).style.display = "block";
    }
   
    if (CalendarShow == alltable.length) {
        document.getElementById("calendarNext").disabled = true;
    }
}
function callprev() {
    let alltable = document.getElementsByClassName("calendarDiv");
    document.getElementById("calendarNext").disabled = false;
    CalendarShow--;
    if (CalendarShow >= 1) {
        for (let i = 0; i < alltable.length; i++) {
            alltable[i].style.display = "none";
        }
        document.getElementById("calendarTable_" + CalendarShow).style.display = "block";
    }
    
    if (CalendarShow == 1) {
        document.getElementById("calendarPrev").disabled = true;
        
    }

}
function getVal(e) {
    var targ;
    if (!e) var e = window.event;
    if (e.target) targ = e.target;
    else if (e.srcElement) targ = e.srcElement;
    if (targ.nodeType == 3) // defeat Safari bug
        targ = targ.parentNode;
    let aDate = today.getFullYear() + "-" + today.getMonth() + CalendarShow + "-" + targ.innerHTML;
    if (targ.innerHTML == "") { alert("Invalid date"); }
    else {
       
      
         document.getElementById("aDate1").disabled = false;
         document.getElementById("aDate1").value = aDate;
         document.getElementById("aDate1").disabled = true;
        
        document.getElementById("aDate2").disabled = false;
        document.getElementById("aDate2").value = aDate;
        document.getElementById("aDate2").disabled = true;
    }
  
    
}
let content = getDatesBetween(MinDate, MaxDate);
document.getElementById("calendar").innerHTML = content;

onload = function () {
    var t = document.getElementById("calendarTable_" + CalendarShow).getElementsByTagName("td");
    for (var i = 0; i < t.length; i++)
        t[i].onclick = getVal;
}
function GetDate () {
    var t = document.getElementById("calendarTable_" + CalendarShow).getElementsByTagName("td");
    for (var i = 0; i < t.length; i++)
        t[i].onclick = getVal;
}
function hideform() {
    document.getElementById("aRequestform").style.display = "none";

}
function unhideCreateform() {
    document.getElementById("aCreateform").style.display = "block";
    GetDate();
}
function hideCreateform() {
    document.getElementById("aCreateform").style.display = "none";
}

function unhideform() {
   
    document.getElementById("aRequestform").style.display = "block";
    document.getElementById("aCreateform").style.display = "none";
    GetDate();
}

//let vetToken = document.getElementById("vetToken").value;
var url = new URL(window.location.href);
var tk = url.searchParams.get("tk");
var nm = url.searchParams.get("nm");
var spz = url.searchParams.get("sp");
console.log(tk + " " + nm + " " + spz);

function vtoken() {
   
   

    if (spz!=null) {
        unhideCreateform();
        let vet = nm;
        let sp = spz;
        let vetToken = tk;
        document.getElementById("VName").value = vet;
        document.getElementById("VName").disabled = "true";
        document.getElementById("specialization").value = sp;
        document.getElementById("specialization").disabled = "true";
        document.getElementById("VToken").value = vetToken;
        document.getElementById("VToken").disabled = "true";
       
    }
    else {
        hideCreateform();
        alert("Access Denied\nWrong token was entered");
    }
}
if (window.location.hash == '#vtoken') {
    vtoken();
}

function CreateAppointment() {
    let flag = 0;
    
    let CreData = document.querySelectorAll('#creForm input');   
    const newApp = new Array(CreData[2].value, CreData[0].value, CreData[1].value, CreData[3].value, CreData[4].value, CreData[5].value); 
    
    for (let i = 0; i < 6; i++) {
        if (newApp[i] == "") {
            flag = 1;
            alert("One or more fields found empty");
            break;
        }
    }
       if (flag != 1) {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("GET", "SaveAppointment.aspx?tn=" + newApp[0] + "&nm=" + newApp[1] + "&sp=" + newApp[2] + "&tt=" + newApp[3] + "&ts=" + newApp[4] + "&dt=" + newApp[5], false);
        xmlhttp.send(null);
        alert("New Appointment Saved");
    }
}
function RequestAppointment() {
    
    let pet = document.querySelector('#Rpettype').value;
    let vet=document.querySelector('#Rvetname').value;
    let ReqData = document.querySelectorAll('#reqForm input');
    const nReq = new Array(ReqData[0].value, pet, vet, ReqData[1].value);
    let flag = 0;
    for (let i = 0; i < 4; i++) {
        if (nReq[i] == "") {
            flag = 1;
            alert("One or more fields found empty");
            break;
        }
    }
    if (flag != 1) {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("GET", "RequestAppointment.aspx?em=" + nReq[0] + "&pt=" + nReq[1] + "&vt=" + nReq[2] + "&dt=" + nReq[3], false);
        xmlhttp.send(null);
        alert("Appointment Request Submitted");
    }
}

var petObject = {
    "Dog": {
        "Vet1": [],
        "Vet3": [],
        "Vet7": [],
        "Vet10": []
    },
    "Cat": {
        "Vet2": [],
        "Vet4": []
    },
    "Bird": {
        "Vet5": [],
        "Vet6": []
    },
    "Rabbit": {
        "Vet8": [],
        "Vet9": []
    }
}

window.onload = function () {
    var petSel = document.getElementById("Rpettype");
    var vetSel = document.getElementById("Rvetname");

    for (var x in petObject) {
        petSel.options[petSel.options.length] = new Option(x, x);
    }
    petSel.onchange = function () {
        
        vetSel.length = 1;

        //display correct values
        for (var y in petObject[this.value]) {
            vetSel.options[vetSel.options.length] = new Option(y, y);
        }
    }

}

function refresh() {
    window.location.replace("AppointmentCalendar.html");
    GetDate();
}




