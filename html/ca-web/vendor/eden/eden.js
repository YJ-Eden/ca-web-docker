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

/*网页函数*/
//1-2
function JsSubmit1_2_1Sql(j){
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var name="answer1211";
  for(var i=0;i<3;i++){
    submitParams.append(name+i.toString(),tmp.arrPos[i]);
  }
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
function JsSubmit1_2_2Sql(j){ 
  var storage=window.sessionStorage;
  eval("var tmp="+j); 
  let submitParams = new URLSearchParams();
  var name="answer1221";
  for(var i=0;i<3;i++){
    submitParams.append(name+i.toString(),tmp.arrPos[i]);
  }
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
//TODO
/*answer:
1-3-1:
{"arrB1":[1.0,0.0,0.0,3.0,0.0,1.0,0.0,2.0,0.0,0.0,1.0,1.0],
"arrB2":[0.71,-0.71,0.0,6.0,0.71,0.71,0.0,0.0,0.0,0.0,1.0,0.0],
"arrB3":[0.0,-1.0,0.0,8.0,1.0,0.0,0.0,3.54,0.0,0.0,1.0,0.0]}

1-3-2:
{"arrDis":[0.0],"arrP12":[0.0,0.0,0.0],"orderToB1":[0.0],
"arrToB1":[0.71,0.71,0.0,0.71,-0.71,0.71,0.0,4.95,0.0,0.0,1.0,1.0,0.0,0.0,0.0,1.0]}
or
{"arrDis":[0.0],"arrP12":[0.0,0.0,0.0],"orderToB1":[1.0],
"arrToB1":[0.71,0.71,0.0,-1.24,-0.71,0.71,0.0,8.24,0.0,0.0,1.0,1.0,0.0,0.0,0.0,1.0]}
*/
function JsSubmit1_3_1Sql(j){
  console.log(j);
  //console.log(typeof arr0);
}
function JsSubmit1_3_2Sql(j){
  console.log(j);
}
function JsSubmit2_1_1Sql(j){
  console.log(j);
}
function JsSubmit2_1_2Sql(j){
  console.log(j);
}
function JsSubmit2_1_3Sql(j){
  //提交并记录完成
  console.log(j);
}
function JsSubmit2_1_4Sql(j){
  console.log(j);
}
function JsSubmit2_2_1(){
  console.log("跳转链接");
}
function JsSubmit2_2_2(){
  //提交文件，回传名字，调unity中onLoadBVH(string url=path~name)
  console.log("上传bvh文件");
  var url = "http://117.51.146.35:8080/resources/Gesture/gesture_etc-10-snip_nail.bvh~gesture_etc-10-snip_nail";
  var name = "gesture_etc-10-snip_nail";
  gameInstance.SendMessage("GUI","onLoadBVH",url+'~'+name);
}
function JsSubmit2_2_3Sql(j){
  //提交旋转值并记录完成
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
      if(storage){
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
                  createTable(response.data.content.score121,response.data.content.updateTime);
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
function createTable(score,date){
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
      th.innerHTML = "题目";
      th = tr.insertCell(tr.cells.length);
      th.innerHTML = "提交日期";
      th = tr.insertCell(tr.cells.length);
      th.innerHTML = "成绩";
      tr = table.insertRow(table.rows.length);
      td = tr.insertCell(tr.cells.length);
      td.innerHTML = "1-2第一题";
      td = tr.insertCell(tr.cells.length);
      td.innerHTML = timestampToTime(date);
      td = tr.insertCell(tr.cells.length);
      td.innerHTML = score;
      //td.innerHTML = "测试";
      document.querySelector("#tb").appendChild(table);
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


