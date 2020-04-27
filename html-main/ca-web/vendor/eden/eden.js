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
// function JsSubmit1_1_1Sql(j){ 
//   var storage=window.sessionStorage;
//   eval("var tmp="+j); 
//   let submitParams = new URLSearchParams();
//   submitParams.append("answerarray1111",tmp.arrPos);
//   submitParams.append("answerarray1112",tmp.arrRot);
  
//   name="answer1212";
//   for(var i=0;i<9;i++){
//     submitParams.append(name+i.toString(),tmp.arrRot[i]);
//   }
  
//   if(storage){
//     axios.post(globalURL+'/score/submit1-1-1',submitParams,{
//       headers:{token:storage.getItem("token")}
//     })
//     .then(response=>{
//       if(response.data.code==0){
//       }
//       else{
//         alert(response.data.message);
//       }
//     })
//     .catch(error=>{
//       console.log(error);
//     })
//   }
// }
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
function JsSubmit2_2_1(){
  console.log("跳转链接");
}
function JsSubmit2_2_2(){
  //提交文件，回传名字，调unity中onLoadBVH(string url=path~name)
  console.log("上传bvh文件");
  var url = "http://117.51.146.35:8079/resources/bvh/gesture_etc-10-snip_nail.bvh~gesture_etc-10-snip_nail";
  var name = "gesture_etc-10-snip_nail";
  gameInstance.SendMessage("GUI","onLoadBVH",url+'~'+name);
}
function JsSubmit2_2_3Sql(j){
  //提交旋转值并记录完成
  console.log(j);
}
//TODO
function JsSubmit2_3_1Sql(j){
  //提交90个dropdown值
  console.log(j);
}
//TODO
function JsSubmit2_5_1Sql(j){
  //提交90个dropdown值
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
                  createTable(response.data.content);
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
        var score = 0;
        if(data.iscomplete11)score = 100;
        td.innerHTML = score;
      }
      else{
        td.innerHTML ="未提交";
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
        var score = 0;
        score = (data.score121+data.score122)/15*100;
        td.innerHTML = score.toFixed(2);
      }
      else{
        td.innerHTML ="未提交";
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
        var score = 0;
        score = (data.score131+data.score132)/57*100;
        td.innerHTML = score.toFixed(2);
      }
      else{
        td.innerHTML ="未提交";
        td = tr.insertCell(tr.cells.length);
      }
      
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



