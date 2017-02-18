function addNewFriend(btn){
  var childs = btn.parentNode.children;
  var childrensSZ = childs.length;
  var inputChild;
  for(var i = 0 ; i < childrensSZ; i++){
    if(childs[i].tagName == 'INPUT'){
      inputChild = childs[i];
    }
  }
  callServiceAddFriend(inputChild,"http://localhost:3000/actors/service/addFriend/");//23mel api lel addFriend in rails
}

function callServiceAddFriend(inputChild, url){
      var request= new XMLHttpRequest();

      url  = url + inputChild.value;
      alert(url);

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
  alert("hello");
}


function removeFriend(btn){
  var childs = btn.parentNode.children;
  var childrensSZ = childs.length;
  var inputChild;
  for(var i = 0 ; i < childrensSZ; i++){
    if(childs[i].tagName == 'INPUT'){
      inputChild = childs[i];
    }
  }
  callServiceremoveFriend(inputChild,"http://localhost:3000/actors/service/removeFriend/");//23mel api lel addFriend in rails
}

function callServiceremoveFriend(inputChild, url){
      var request= new XMLHttpRequest();

      url  = url + inputChild.value;
      alert(url);

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
  alert("hello");
}
