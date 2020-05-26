/*引用js文件*/
//axios
var axiosScript=document.createElement("script");
//axiosScript.setAttribute("src","https://unpkg.com/axios/dist/axios.min.js");
axiosScript.setAttribute("src","https://cdn.bootcss.com/axios/0.19.2/axios.min.js");
document.head.appendChild(axiosScript);



/*定义全局变量*/
//切换使用环境时切换axios请求的url
//var globalURL='http://127.0.0.1:8088/user';
var globalURL='http://117.51.146.35:8088/user';

//切换8079、8080时视频地址
var videoURL = "http://117.51.146.35:8079";
//var videoURL = "http://117.51.146.35:8080";

//教师成绩查看页，成绩数组
var scoreArray = [];



/*网页函数*/
//1_1_1完成iscomplete
function JsSubmit1_1_1Sql(j){ 
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer111="";
  for(var i = 0;i<3;i++){
    answer111+=(tmp.arrPos[i].toString()+"^");
  }
  for(var i = 0;i<8;i++){
    answer111+=(tmp.arrRot[i].toString()+"^");
  }
  answer111+=tmp.arrRot[8].toString();
  //console.log(answer11);
  submitParams.append("answer111",answer111);
  /*
  name="answer1212";
  for(var i=0;i<9;i++){
    submitParams.append(name+i.toString(),tmp.arrRot[i]);
  }
  */
  if(storage){
    axios.post(globalURL+'/score/submit1-1-1',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
/*function JsSubmit1_1_1Sql(j){ 
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  submitParams.append("answerarray1111",tmp.arrPos);
  submitParams.append("answerarray1112",tmp.arrRot);
  
  name="answer1212";
  for(var i=0;i<9;i++){
    submitParams.append(name+i.toString(),tmp.arrRot[i]);
  }
  
  if(storage){
    axios.post(globalURL+'/score/submit1-1-1',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}*/
//1_2_1完成
function JsSubmit1_2_1Sql(j){ 
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer121="";
  for(var i = 0;i<3;i++){
    answer121+=(tmp.arrPos[i].toString()+"^");
  }
  for(var i = 0;i<8;i++){
    answer121+=(tmp.arrRot[i].toString()+"^");
  }
  answer121+=tmp.arrRot[8].toString();
  submitParams.append("answer121",answer121);
  /*
  name="answer1212";
  for(var i=0;i<9;i++){
    submitParams.append(name+i.toString(),tmp.arrRot[i]);
  }
  */
  if(storage){
    axios.post(globalURL+'/score/submit1-2-1',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//1_2_2完成iscomplete
function JsSubmit1_2_2Sql(j){ 
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer122="";
  for(var i = 0;i<2;i++){
    answer122+=(tmp.arrPos[i].toString()+"^");
  }
  answer122+=tmp.arrPos[2].toString();
  submitParams.append("answer122",answer122);

  if(storage){
    axios.post(globalURL+'/score/submit1-2-2',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//1_3_1完成
function JsSubmit1_3_1Sql(j){
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer131="";
  for(var i = 0;i<12;i++){
    answer131+=(tmp.arrB1[i].toString()+"^");
  }
  for(var i = 0;i<12;i++){
    answer131+=(tmp.arrB2[i].toString()+"^");
  }
  for(var i = 0;i<11;i++){
    answer131+=(tmp.arrB3[i].toString()+"^");
  }
  answer131+=tmp.arrB3[11].toString();
  submitParams.append("answer131",answer131);
  /*
  name="answer1212";
  for(var i=0;i<9;i++){
    submitParams.append(name+i.toString(),tmp.arrRot[i]);
  }
  */
  if(storage){
    axios.post(globalURL+'/score/submit1-3-1',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
  //console.log(typeof arr0);
}
//1_3_2完成iscomplete
function JsSubmit1_3_2Sql(j){
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer132="";
  for(var i = 0;i<1;i++){
    answer132+=(tmp.arrDis[i].toString()+"^");
  }
  for(var i = 0;i<3;i++){
    answer132+=(tmp.arrP12[i].toString()+"^");
  }
  for(var i = 0;i<1;i++){
    answer132+=(tmp.orderToB1[i].toString()+"^");
  }
  for(var i = 0;i<15;i++){
    answer132+=(tmp.arrToB1[i].toString()+"^");
  }
  answer132+=tmp.arrToB1[15].toString();
  submitParams.append("answer132",answer132);
  /*
  name="answer1212";
  for(var i=0;i<9;i++){
    submitParams.append(name+i.toString(),tmp.arrRot[i]);
  }
  */
  if(storage){
    axios.post(globalURL+'/score/submit1-3-2',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//已完成
function JsSubmit2_1_1Sql(j){
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer="";
  var array = tmp.arrDropdown;
  for(var i = 0;i<1;i++){
    answer+=(array[i].toString()+"^");
  }
  answer+=array[1].toString();

  submitParams.append("answer211",answer);

  if(storage){
    axios.post(globalURL+'/score/submit2-1-1',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//已完成
function JsSubmit2_1_2Sql(j){
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer="";
  var array = tmp.arrDropdown;
  for(var i = 0;i<2;i++){
    answer+=(array[i].toString()+"^");
  }

  array = tmp.arrToggle1;
  for(var i = 0;i<4;i++){
    answer+=(array[i].toString()+"^");
  }

  array = tmp.arrToggle2;
  for(var i = 0;i<3;i++){
    answer+=(array[i].toString()+"^");
  }
  answer+=array[3].toString();

  submitParams.append("answer212",answer);

  if(storage){
    axios.post(globalURL+'/score/submit2-1-2',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//已完成iscomplete
function JsSubmit2_1_3Sql(j){
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer="";
  //TODO
  var array = tmp.arrDropdown;
  for(var i = 0;i<5;i++){
    answer+=(array[i].toString()+"^");
  }
  answer+=array[5].toString();
  //TODO
  submitParams.append("answer213",answer);

  if(storage){
    //TODO
    axios.post(globalURL+'/score/submit2-1-3',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//set视频地址
function JsSubmit2_2_0(){
  var url1 = videoURL+"/resources/2-2-2.mp4";
  var url2 = videoURL+"/resources/2-2-3.mp4";
  gameInstance.SendMessage("GUI","setURLs",url1+'~'+url2);
}
//已完成下载bvh文件modal
function JsSubmit2_2_1(){
  var button = document.getElementById("openModal");
  button.click();
}
//已完成上传bvh文件
function JsSubmit2_2_2(){
  //提交文件，回传名字，调unity中onLoadBVH(string url=path~name)
  var fileInput = document.getElementById("bvhFile");
  fileInput.click();
  console.log("上传bvh文件"); 
}
//已完成2—2—2传输bvh文件并调用webgl接口创建模型
function bvhFileLoad(ele){
  var storage=window.sessionStorage;
  var form = new FormData();
  var file = $(ele)[0].files[0];
  form.append("file",file);
  if(storage){
    axios.post(globalURL+'/score/bvhFileUpLoad',form,{
      headers:{
        token:storage.getItem("token")
      }
    })
    .then(response=>{
      if(response.data.code==0){
        var url = videoURL+"/resources/bvh/"+storage.getItem("name")+".bvh";
        var name = storage.getItem("name");
        gameInstance.SendMessage("GUI","onLoadBVH",url+'~'+name);
        alert("上传成功");
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//已完成iscomplete
function JsSubmit2_2_3Sql(j){
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer="";
  //TODO
  var array = tmp.BoneRotates;
  for(var i = 0;i<56;i++){
    answer+=(array[i].toString()+"^");
  }
  answer+=array[56].toString();
  //TODO
  submitParams.append("answer223",answer);

  if(storage){
    //TODO
    axios.post(globalURL+'/score/submit2-2-3',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//已完成
function JsSubmit2_3_1Sql(j){
  //提交90个dropdown值
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer="";
  //TODO
  var array = tmp.joints;
  for(var i = 0;i<89;i++){
    answer+=(array[i].toString()+"^");
  }
  answer+=array[89].toString();
  //TODO
  submitParams.append("answer231",answer);

  if(storage){
    //TODO
    axios.post(globalURL+'/score/submit2-3-1',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//已完成
function JsSubmit2_3_2Sql(j){
  //提交18个角标值
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer="";
  //TODO
  var array = tmp.labels;
  for(var i = 0;i<27;i++){
    answer+=(array[i].toString()+"^");
  }
  answer+=array[27].toString();
  //TODO
  submitParams.append("answer232",answer);

  if(storage){
    //TODO
    axios.post(globalURL+'/score/submit2-3-2',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//已完成iscomplete
function JsSubmit2_3_3Sql(j){
  //提交72个角标值，设置iscomplete
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var answer="";
  //TODO
  var array = tmp.labels;
  for(var i = 0;i<63;i++){
    answer+=(array[i].toString()+"^");
  }
  answer+=array[63].toString();
  //TODO
  submitParams.append("answer233",answer);

  if(storage){
    //TODO
    axios.post(globalURL+'/score/submit2-3-3',submitParams,{
      headers:{token:storage.getItem("token")}
    })
    .then(response=>{
      if(response.data.code==0){
      }
      else{
        alert(response.data.message);
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//TODO
function JsSubmit2_5_1Sql(j){
  //
  console.log(j);
}
//LogIn
/*submit注册+提示
let testForm = function () {
  let registerParams = new URLSearchParams();
  registerParams.append('name',document.sentMessage.name.value);
  registerParams.append('password',md5(document.sentMessage.phone.value));
  axios.post('http://127.0.0.1:8088/user/student/register',registerParams)
  .then(response=>{
    if(response.data.code==0){
      alert('注册成功')
    }
    else{
      alert(response.data.message)
    }
  })
  .catch(error=>{
    console.log(error)
  })
  return false;
}
*/
//submit登陆+提示
function logIn() {
  let loginParams = new URLSearchParams();
  loginParams.append('name',document.getElementById("name").value);
  loginParams.append('password',md5(document.getElementById("password").value));
  console.log(loginParams);
  var storage=window.sessionStorage;
  var radio=document.getElementsByName("type");
  var type;
  for(var i=0;i<radio.length;i++){
    if(radio[i].checked){
      type=radio[i].value;
      break;
    }
  }
  storage.setItem('userType',type);
  axios.post(globalURL+'/'+type+'/'+type+'Login',loginParams)
  .then(response=>{
    if(response.data.code==0){
      var vo=response.data.content;
      storage.setItem('token',vo.token);
      storage.setItem('name',document.getElementById("name").value);
      storage.setItem('userId',vo.id);
      alert('欢迎登陆，'+storage.getItem("name"));
      if(storage.pathname){
        var pathname=storage.pathname;
        storage.setItem('pathname','');
        window.location.href=pathname;
      }
      else{
        window.location.href="../../index.html";
      }
    }
    else{
      alert(response.data.message);
    }
  })
  .catch(error=>{
    console.log(error)
  })
  return false;
}



/*公共函数*/
//验证token函数
//window.onload=testToken();
function testToken(pathname,x=true){
  var storage=window.sessionStorage;
  if(!storage.token){
    storage.setItem('pathname',pathname);
    if(x==true)window.location.href='../LogIn/index.html';
    else window.location.href='webpages/LogIn/index.html';
  }
  // if(pathname=="/webpages/1-1/index.html")alert("本实验已停止提交！\n目前可正常操作实验流程，但无法再修改成绩。");
  // if(pathname=="/webpages/1-2/index.html")alert("本实验已停止提交！\n目前可正常操作实验流程，但无法再修改成绩。");
  // if(pathname=="/webpages/1-3/index.html")alert("本实验已停止提交！\n目前可正常操作实验流程，但无法再修改成绩。");
}
//登出
function logOut(x=true){
  var storage=window.sessionStorage;
  if(storage){
  axios.post(globalURL+'/student/studentLogout',null,{
          headers:{token:storage.getItem("token")}
        })
    .then(response=>{
      if(response.data.code==0){
        storage.setItem('userType','');
        storage.setItem('token','');
        storage.setItem('name','');
        storage.setItem('userId','');
        if(x==true)window.location.href='../LogIn/index.html';
        else window.location.href='webpages/LogIn/index.html';
      }
    })
    .catch(error=>{
      console.log(error);
    })
  }
}
//移除table
function removeTable(){
  //td.innerHTML = "测试";
  var table = document.getElementById("tbb");
  document.querySelector("#tb").removeChild(table);
}
//用成绩创建表格
function createTableUseScore(){
  //获取成绩
  var storage=window.sessionStorage;
  if(storage && storage.getItem("userType")=="student"){
    axios.post(globalURL+'/score/getByStudentId',null,{
      headers:{token:storage.getItem("token")}
    })
      .then(response=>{
        if(response.data.code==0){
          //var vo=response.data.content;
          var table = document.getElementById("tbb");
          if(table){
            removeTable();
          }
          createTable(response.data.content);
        }
      })
      .catch(error=>{
        console.log(error);
      })
  }
  else if(storage && storage.getItem("userType")=="teacher"){
    axios.post(globalURL+'/score/getAllByTeacher',null,{
      headers:{token:storage.getItem("token")}
    })
      .then(response=>{
        if(response.data.code==0){
          var data_student=new Array();

          axios.post(globalURL+'/student/getAllByTeacher',null,{
      headers:{token:storage.getItem("token")}
          })
          .then(response2=>{
            if(response2.data.code==0){
              var table = document.getElementById("tbb");
              if(table){
                removeTable();
              }
              createDownload();
              createTableDataTeacher(response.data.content,response2.data.content);
            }
          })
        }
      })
      .catch(error=>{
        console.log(error);
      })
  }
  else{
    window.location.href='../LogIn/index.html';
  }
}
//创建表格
function createTable(data){
  var br=document.createElement("div");
  br.innerHTML="<h4><li>详细成绩</li></h4><br/>"
  document.querySelector("#tb").appendChild(br);

  var table = document.createElement("table");
  table.border = "1";
  table.width = "100%";
  table.id="tbb";
  table.className="table table-striped table-bordered table-hover text-center";

  //table API
  //创建一行
  //var tr = table.insertRow(table.rows.length);
  //创建单元格
  //var td = tr.insertCell(tr.cells.length);
  var tr,th,td;

  tr = table.insertRow(table.rows.length);
  tr.style="font-weight:bold;"
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "实验序号";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "实验名称";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "提交日期";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "成绩";

  tr = table.insertRow(table.rows.length);
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "1-1";
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "<a href = '../1-1/index.html'>3D数学空间位姿</a>";
  td = tr.insertCell(tr.cells.length);
  if(data.iscomplete11){
    td.innerHTML = timestampToTime(data.updateTime11);
    td = tr.insertCell(tr.cells.length);
    td.innerHTML = 100;
  }
  else{
    td.innerHTML ="未完成";
    td = tr.insertCell(tr.cells.length);
  }

  tr = table.insertRow(table.rows.length);
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "1-2";
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "<a href = '../1-2/index.html'>坐标变换</a>";
  td = tr.insertCell(tr.cells.length);
  if(data.iscomplete12){
    td.innerHTML = timestampToTime(data.updateTime12);
    td = tr.insertCell(tr.cells.length);
    var scores1 = data.score121.split('^');
    var scores2 = data.score122.split('^');
    var score1 = parseInt(scores1[0]);
    var score2 = parseInt(scores2[0]);
    score = (score1+score2)/15*100;
    td.innerHTML = Math.round(score*100)/100;
  }
  else{
    td.innerHTML ="未完成";
    td = tr.insertCell(tr.cells.length);
  }

  tr = table.insertRow(table.rows.length);
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "1-3";
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "<a href = '../1-3/index.html'>空间变换综合实验</a>";
  td = tr.insertCell(tr.cells.length);
  // if(data.score111){
  if(data.iscomplete13){
    td.innerHTML = timestampToTime(data.updateTime13);
    td = tr.insertCell(tr.cells.length);
    var scores1 = data.score131.split('^');
    var scores2 = data.score132.split('^');
    var score1 = parseInt(scores1[0]);
    var score2 = parseInt(scores2[0]);
    score = (score1+score2)/57*100;
    td.innerHTML = Math.round(score*100)/100;
  }
  else{
    td.innerHTML ="未完成";
    td = tr.insertCell(tr.cells.length);
  }

  tr = table.insertRow(table.rows.length);
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "2-1";
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "<a href = '../2-2/index.html'>动作捕捉数据的获取与认知实验</a>";
  td = tr.insertCell(tr.cells.length);
  if(data.iscomplete22){
    td.innerHTML = timestampToTime(data.updateTime22);
    td = tr.insertCell(tr.cells.length);
    td.innerHTML = 100;
  }
  else{
    td.innerHTML ="未完成";
    td = tr.insertCell(tr.cells.length);
  }

  tr = table.insertRow(table.rows.length);
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "2-2";
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "<a href = '../2-1/index.html'>虚拟人运动学求解基础</a>";
  td = tr.insertCell(tr.cells.length);
  // if(data.score111){
  if(data.iscomplete21){
    td.innerHTML = timestampToTime(data.updateTime21);
    td = tr.insertCell(tr.cells.length);
    var scores1 = data.score211.split('^');
    var scores2 = data.score212.split('^');
    var scores3 = data.score213.split('^');
    var score1 = parseInt(scores1[0]);
    var score2 = parseInt(scores2[0]);
    var score3 = parseInt(scores3[0]);
    score = (score1+score2+score3)/18*100;
    td.innerHTML = Math.round(score*100)/100;
  }
  else{
    td.innerHTML ="未完成";
    td = tr.insertCell(tr.cells.length);
  }

  tr = table.insertRow(table.rows.length);
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "2-3";
  td = tr.insertCell(tr.cells.length);
  td.innerHTML = "<a href = '../2-3/index.html'>FK（正向运动学）虚拟人运动重构</a>";
  td = tr.insertCell(tr.cells.length);
  // if(data.score111){
  if(data.iscomplete23){
    td.innerHTML = timestampToTime(data.updateTime23);
    td = tr.insertCell(tr.cells.length);
    var scores1 = data.score231.split('^');
    var scores2 = data.score232.split('^');
    var scores3 = data.score233.split('^');
    var score1 = parseInt(scores1[0]);
    var score2 = parseInt(scores2[0]);
    var score3 = parseInt(scores3[0]);
    score = (score1+score2+score3)/182*100;
    td.innerHTML = Math.round(score*100)/100;
  }
  else{
    td.innerHTML ="未完成";
    td = tr.insertCell(tr.cells.length);
  }

  //td.innerHTML = "测试";
  document.querySelector("#tb").appendChild(table);
}
//教师创建下载按钮
function createDownload(){
  var oA=document.createElement("a");
  oA.href="#";
  //oA.onclick=exportExcelUseScore;
  oA.onclick=tableToExcel;
  oA.className="btn btn-primary";
  oA.text="导出详细成绩单";
  document.querySelector("#tb").appendChild(oA);
  var br=document.createElement("div");
  br.innerHTML="<br/>"
  document.querySelector("#tb").appendChild(br);
}
//教师创建scoreArray
function createTableDataTeacher(data,data_student){
  var nStudents = data_student.length;
  var nScores = data.length;

  for(var i = 0;i < nStudents;i++){
    var j;
    var rightSum = 0,questionSum = 0;
    var student = {};
    for(j = 0;j<nScores;j++){
      if(data[j].studentId==data_student[i].id)
        break;
    }    
    if(j>44)j=-1;

    student["no"]=i;
    student["number"]=data_student[i].name;
    student["name"]=data_student[i].name2;
    student["score1"] = 0;
    student["score2"] = 0;

    //1-1
    student["right111"] = 0;
    student["questions111"] = 1;
    student["submit111"] = 0;
    if(j!=-1 && data[j].score111){
      var scoreSplit = data[j].score111.split('^');
      student["right111"] = 1;
      student["submit111"] = parseInt(scoreSplit[1]);
    }
    student["updateTime11"]="";
    if(j!=-1 && data[j].updateTime11){
      student["updateTime11"]=timestampToTime(data[j].updateTime11);;
    }
    student["score11"]=Math.round(student["right111"]/student["questions111"]*100*100)/100;
    student["score1"]+=student["score11"];
    student["iscomplete11"]=0;
    if(j!=-1)student["iscomplete11"]=data[j].iscomplete11;
    rightSum+=student["right111"];
    questionSum+=student["questions111"];

    //1-2
    student["right121"] = 0;
    student["questions121"] = 12;
    student["submit121"] = 0;
    if(j!=-1 && data[j].score121){
      var scoreSplit = data[j].score121.split('^');
      student["right121"] = parseInt(scoreSplit[0]);
      student["submit121"] = parseInt(scoreSplit[1]);
    }
    student["right122"] = 0;
    student["questions122"] = 3;
    student["submit122"] = 0;
    if(j!=-1 && data[j].score122){
      var scoreSplit = data[j].score122.split('^');
      student["right122"] = parseInt(scoreSplit[0]);
      student["submit122"] = parseInt(scoreSplit[1]);
    }
    student["updateTime12"]="";
    if(j!=-1 && data[j].updateTime12){
      student["updateTime12"]=timestampToTime(data[j].updateTime12);;
    }
    var tmprights = student["right121"]+student["right122"];
    var tmpquestions = student["questions121"]+student["questions122"];
    student["score12"]=Math.round((tmprights/tmpquestions)*100*100)/100;
    student["score1"]+=student["score12"];
    student["iscomplete12"]=0;
    if(j!=-1)student["iscomplete12"]=data[j].iscomplete12;
    rightSum+=tmprights;
    questionSum+=tmpquestions;

    //1-3
    student["right131"] = 0;
    student["questions131"] = 36;
    student["submit131"] = 0;
    if(j!=-1 && data[j].score131){
      var scoreSplit = data[j].score131.split('^');
      student["right131"] = parseInt(scoreSplit[0]);
      student["submit131"] = parseInt(scoreSplit[1]);
    }
    student["right132"] = 0;
    student["questions132"] = 21;
    student["submit132"] = 0;
    if(j!=-1 && data[j].score132){
      var scoreSplit = data[j].score132.split('^');
      student["right132"] = parseInt(scoreSplit[0]);
      student["submit132"] = parseInt(scoreSplit[1]);
    }
    student["updateTime13"]="";
    if(j!=-1 && data[j].updateTime13){
      student["updateTime13"]=timestampToTime(data[j].updateTime13);;
    }
    var tmprights = student["right131"]+student["right132"];
    var tmpquestions = student["questions131"]+student["questions132"];
    student["score13"]=Math.round((tmprights/tmpquestions)*100*100)/100;
    student["score1"]+=student["score13"];
    student["iscomplete13"]=0;
    if(j!=-1)student["iscomplete13"]=data[j].iscomplete13;
    rightSum+=tmprights;
    questionSum+=tmpquestions;

    //2-1
    student["right211"] = 0;
    student["questions211"] = 2;
    student["submit211"] = 0;
    if(j!=-1 && data[j].score211){
      var scoreSplit = data[j].score211.split('^');
      student["right211"] = parseInt(scoreSplit[0]);
      student["submit211"] = parseInt(scoreSplit[1]);
    }
    student["right212"] = 0;
    student["questions212"] = 10;
    student["submit212"] = 0;
    if(j!=-1 && data[j].score212){
      var scoreSplit = data[j].score212.split('^');
      student["right212"] = parseInt(scoreSplit[0]);
      student["submit212"] = parseInt(scoreSplit[1]);
    }
    student["right213"] = 0;
    student["questions213"] = 6;
    student["submit213"] = 0;
    if(j!=-1 && data[j].score213){
      var scoreSplit = data[j].score213.split('^');
      student["right213"] = parseInt(scoreSplit[0]);
      student["submit213"] = parseInt(scoreSplit[1]);
    }
    student["updateTime21"]="";
    if(j!=-1 && data[j].updateTime21){
      student["updateTime21"]=timestampToTime(data[j].updateTime21);;
    }
    var tmprights = student["right211"]+student["right212"]+student["right213"];
    var tmpquestions = student["questions211"]+student["questions212"]+student["questions213"];
    student["score21"]=Math.round((tmprights/tmpquestions)*100*100)/100;
    student["score1"]+=student["score21"];
    student["iscomplete21"]=0;
    if(j!=-1)student["iscomplete21"]=data[j].iscomplete21;
    rightSum+=tmprights;
    questionSum+=tmpquestions;

    //2-2
    student["right223"] = 0;
    student["questions223"] = 1;
    student["submit223"] = 0;
    if(j!=-1 && data[j].score223){
      var scoreSplit = data[j].score223.split('^');
      student["right223"] = 1;
      student["submit223"] = parseInt(scoreSplit[1]);
    }
    student["updateTime22"]="";
    if(j!=-1 && data[j].updateTime22){
      student["updateTime22"]=timestampToTime(data[j].updateTime22);;
    }
    student["score22"]=Math.round(student["right223"]/student["questions223"]*100*100)/100;
    student["score1"]+=student["score22"];
    student["iscomplete22"]=0;
    if(j!=-1)student["iscomplete22"]=data[j].iscomplete22;
    rightSum+=student["right223"];
    questionSum+=student["questions223"];

    //2-3
    student["right231"] = 0;
    student["questions231"] = 90;
    student["submit231"] = 0;
    if(j!=-1 && data[j].score231){
      var scoreSplit = data[j].score231.split('^');
      student["right231"] = parseInt(scoreSplit[0]);
      student["submit231"] = parseInt(scoreSplit[1]);
    }
    student["right232"] = 0;
    student["questions232"] = 28;
    student["submit232"] = 0;
    if(j!=-1 && data[j].score232){
      var scoreSplit = data[j].score232.split('^');
      student["right232"] = parseInt(scoreSplit[0]);
      student["submit232"] = parseInt(scoreSplit[1]);
    }
    student["right233"] = 0;
    student["questions233"] = 64;
    student["submit233"] = 0;
    if(j!=-1 && data[j].score233){
      var scoreSplit = data[j].score233.split('^');
      student["right233"] = parseInt(scoreSplit[0]);
      student["submit233"] = parseInt(scoreSplit[1]);
    }
    student["updateTime23"]="";
    if(j!=-1 && data[j].updateTime23){
      student["updateTime23"]=timestampToTime(data[j].updateTime23);;
    }
    var tmprights = student["right231"]+student["right232"]+student["right233"];
    var tmpquestions = student["questions231"]+student["questions232"]+student["questions233"];
    student["score23"]=Math.round((tmprights/tmpquestions)*100*100)/100;
    student["score1"]+=student["score23"];
    student["iscomplete23"]=0;
    if(j!=-1)student["iscomplete23"]=data[j].iscomplete23;
    rightSum+=tmprights;
    questionSum+=tmpquestions;

    student["score1"]=Math.round((student["score1"]/6)*100)/100;
    student["score2"]=Math.round((rightSum/questionSum)*100*100)/100;

    scoreArray.push(student);
  }
  createTableTeacher();
}
//教师创建table
function createTableTeacher(){
  var table = document.createElement("table");
  table.border = "1";
  table.width = "100%";
  table.id="tbb";
  table.className="table table-striped table-bordered table-hover text-center";

  //table API
  //创建一行
  //var tr = table.insertRow(table.rows.length);
  //创建单元格
  //var td = tr.insertCell(tr.cells.length);
  var tr,th,td;

  tr = table.insertRow(table.rows.length);
  tr.style="font-weight:bold;";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "序号";
  th.style.verticalAlign = "middle";
  // th.rowSpan=2;
  // th.style="vertical-align: middle;";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "学号";
  th.style.verticalAlign = "middle";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "姓名";
  th.style.verticalAlign = "middle";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "<a href = '../1-1/index.html'>1-1</a>";
  th.style.verticalAlign = "middle";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "<a href = '../1-2/index.html'>1-2</a>";
  th.style.verticalAlign = "middle";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "<a href = '../1-3/index.html'>1-3</a>";
  th.style.verticalAlign = "middle";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "<a href = '../2-1/index.html'>2-1</a>";
  th.style.verticalAlign = "middle";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "<a href = '../2-2/index.html'>2-2</a>";
  th.style.verticalAlign = "middle";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "<a href = '../2-3/index.html'>2-3</a>";
  th.style.verticalAlign = "middle";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "总成绩</br>(按填空)";
  th = tr.insertCell(tr.cells.length);
  th.innerHTML = "总成绩</br>(按实验)";

  var nStudents = scoreArray.length;
  for(var i = 0;i < nStudents;i++){

    tr = table.insertRow(table.rows.length);
    td = tr.insertCell(tr.cells.length);
    td.innerHTML = scoreArray[i].no;
    td = tr.insertCell(tr.cells.length);
    td.innerHTML = scoreArray[i].number;
    td = tr.insertCell(tr.cells.length);
    td.innerHTML = scoreArray[i].name;
    //1-1
    td = tr.insertCell(tr.cells.length);
    td.innerHTML=scoreArray[i].score11;
    //1-2
    td = tr.insertCell(tr.cells.length);
    td.innerHTML=scoreArray[i].score12;
    //1-3
    td = tr.insertCell(tr.cells.length);
    td.innerHTML=scoreArray[i].score13;
    //2-1
    td = tr.insertCell(tr.cells.length);
    td.innerHTML=scoreArray[i].score21;
    //2-2
    td = tr.insertCell(tr.cells.length);
    td.innerHTML=scoreArray[i].score22;
    //2-2
    td = tr.insertCell(tr.cells.length);
    td.innerHTML=scoreArray[i].score22;
    
    //总成绩
    td = tr.insertCell(tr.cells.length);
    td.innerHTML=scoreArray[i].score2;
    td = tr.insertCell(tr.cells.length);
    td.innerHTML=scoreArray[i].score1;
  }
  //td.innerHTML = "测试";
  document.querySelector("#tb").appendChild(table);
}
//教师导出成绩
function tableToExcel(data,data_student){
  let str = '序号,学号,姓名,总成绩(按实验),总成绩（按填空）,1-1-1答对题数,1-1-1总题数,1-1-1提交次数,1-1提交时间,1-1成绩,1-2-1答对题数,1-2-1总题数,1-2-1提交次数,1-2-2答对题数,1-2-2总题数,1-2-2提交次数,1-2提交时间,1-2成绩,1-3-1答对题数,1-3-1总题数,1-3-1提交次数,1-3-2答对题数,1-3-2总题数,1-3-2提交次数,1-3提交时间,1-3成绩,2-1-1答对题数,2-1-1总题数,2-1-1提交次数,2-1-2答对题数,2-1-2总题数,2-1-2提交次数,2-1-3答对题数,2-1-3总题数,2-1-3提交次数,2-1提交时间,2-1成绩,2-2-1答对题数,2-2-1总题数,2-2-1提交次数,2-2提交时间,2-2成绩,2-3-1答对题数,2-3-1总题数,2-3-1提交次数,2-3-2答对题数,2-3-2总题数,2-3-2提交次数,2-3-3答对题数,2-3-3总题数,2-3-3提交次数,2-3提交时间,2-3成绩\n';

  var nStudents = scoreArray.length;
  for(var i = 0;i<nStudents;i++){
    for(let item in scoreArray[i]){
       if(item.indexOf("iscomplete") == -1){
        str+=scoreArray[i][item];
        str+='\t,';
       }
    }
    str+='\n';
  }

  //encodeURIComponent解决中文乱码
  let uri = 'data:text/csv;charset=utf-8,\ufeff' + encodeURIComponent(str);
  //通过创建a标签实现
  let link = document.createElement("a");
  link.href = uri;
  //对下载的文件命名
  link.download =  "详细成绩.csv";
  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);
}
//标准化日期
function timestampToTime(timestamp) {
     var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
     Y = date.getFullYear() + '-';
     M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
     D = date.getDate() + ' ';
     h = date.getHours() + ':';
     m = date.getMinutes() + ':';
     s = date.getSeconds();
     return Y+M+D;
}
//修改密码
function ChangePassword(){
  var password = document.forms["sentMessage"]["password"].value;
  let Params = new URLSearchParams();
  Params.append('password',md5(password));
  var storage=window.sessionStorage;
  var type = storage.userType;
  //console.log(type);
  axios.post(globalURL+'/'+type+'/'+type+'ChangePassword',Params,{
      headers:{token:storage.getItem("token")}
    })
  .then(response=>{
    if(response.data.code==0){
      alert("修改成功，请重新登录！");
      storage.setItem('userType','');
      storage.setItem('token','');
      storage.setItem('name','');
      storage.setItem('userId','');
      window.location.href='webpages/LogIn/index.html';
    }
    else{
      alert(response.data.message);
    }
  })
  .catch(error=>{
    console.log(error)
  })
}