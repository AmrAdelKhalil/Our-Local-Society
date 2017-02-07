// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// i convert it to file.coffee.js because of this (http://guides.rubyonrails.org/asset_pipeline.html#preprocessing)
// summary: file.coffee.js compiles the file to js then to coffee and send it to browser as js
// if you swap them you will get into problems see this too (http://stackoverflow.com/questions/38051297/rails-4-require-tree-in-application-js-doesnt-include-my-js-file-in-a)
function setVisibleHide(dayName, button){

    if(button.id == "arrow_drop_slots_right"){
        var arr = document.getElementsByName(dayName.id);
        var sz = document.getElementsByName(dayName.id).length;

        for(var i = 0 ; i < sz ; i++){
            arr[i].classList.remove("hiddenDay");
        }

        button.id = "arrow_drop_slots_down";
    }else{
        var sz = document.getElementsByName(dayName.id).length;
        var arr = document.getElementsByName(dayName.id);

        for(var i = 0 ; i < sz ; i++)
            arr[i].className += " hiddenDay";

        button.id = "arrow_drop_slots_right";
    }
};
function openInDialog(slot){

    var parentDiv = slot.parentNode.parentNode.parentNode;// to get the parent of the parent of the parent
    var paragraphs = parentDiv.getElementsByTagName('p');
    var innerText = paragraphs[paragraphs.length-1].innerHTML;

    var modal = document.getElementById('myModal');
    var content = document.getElementById('textDialog');

    content.innerHTML = innerText;
    modal.style.display = "block";
}

function closeDialog(){
    var modal = document.getElementById('myModal');
    modal.style.display = "none";
}

window.onclick = function(event) {
    var modal = document.getElementById('myModal');
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
