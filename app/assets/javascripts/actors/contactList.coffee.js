function searchForElement(childs, childrensSZ, str){
  var element;
  for(var i = 0 ; i < childrensSZ; i++){
    if(childs[i].tagName == str){
      element = childs[i];
    }
  }
  return element;
}
function addNewFriend(btn){
  var childs = btn.parentNode.children;
  var childrensSZ = childs.length;
  var inputChild = searchForElement(childs, childrensSZ, 'INPUT');
  callServiceAddFriend(inputChild,"http://localhost:3000/actors/service/addFriend/");//23mel api lel addFriend in rails
}

function callServiceAddFriend(inputChild, url){
      var request= new XMLHttpRequest();
      url  = url + inputChild.value;
      request.open("GET",url,true);
      //next line for post requests
      //request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
      request.send();
      request.onreadystatechange=function()
      {
          if(request.readyState==4 && request.status==200){
            moveNonFriendToFriend(inputChild);
          }
      }
}

function moveNonFriendToFriend(inputChild) {
  friendBoolDiv = document.getElementById("friendBool");
  var div = document.createElement('div');
  div.className = "col-lg-3";
  var btn;

  parent = inputChild.parentNode;
  grandBa = parent.parentNode;
  var childs = parent.children;
  var childrensSZ = childs.length;

  btn = searchForElement(childs, childrensSZ, 'BUTTON');
  btn.innerHTML = 'remove'; btn.classList.remove("btn-success"); btn.className += " btn-danger"; btn.onclick = function(){removeFriend(this)};
  div.appendChild(parent);

  friendBoolDiv.appendChild(div);
  grandBa.parentNode.removeChild(grandBa);
}


function removeFriend(btn){
  var childs = btn.parentNode.children;
  var childrensSZ = childs.length;
  var inputChild = searchForElement(childs, childrensSZ, 'INPUT');
  callServiceremoveFriend(inputChild,"http://localhost:3000/actors/service/removeFriend/");//23mel api lel addFriend in rails
}

function callServiceremoveFriend(inputChild, url){
      var request= new XMLHttpRequest();
      url  = url + inputChild.value;
      request.open("GET",url,true);
      //next line for post requests
      //request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
      request.send();
      request.onreadystatechange=function()
      {
          if(request.readyState==4 && request.status==200){
            moveFriendToNonFriend(inputChild);
          }
      }
}

function moveFriendToNonFriend(inputChild) {
  nonFriendBoolDiv = document.getElementById("nonFriendBool");
  var div = document.createElement('div');
  div.className = "col-lg-3";
  var btn;
  
  parent = inputChild.parentNode;
  var childs = parent.children;
  var childrensSZ = childs.length;

  btn = searchForElement(childs, childrensSZ, 'BUTTON');
  btn.innerHTML="add"; btn.classList.remove("btn-danger"); btn.className += " btn-success"; btn.onclick = function(){addNewFriend(this)};
  grandBa = parent.parentNode;
  div.appendChild(parent);

  nonFriendBoolDiv.appendChild(div);
  grandBa.parentNode.removeChild(grandBa);
}
