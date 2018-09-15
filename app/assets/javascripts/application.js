// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function commande(nom,argument){
  if (typeof argument === "undefined") {
    argument = '';
  }
  switch(nom){
    case "createLink":
      argument = prompt("Quelle est l'adresse du lien ?");
    break;
    case "insertImage":
      argument = prompt("Quelle est l'adresse de l'image ?");
    break;
  }
  // Exécuter la commande
  document.execCommand(nom, false, argument);
}

function resultat(){
  document.getElementById("text-editor-output").value = document.getElementById("text-editor-input").innerHTML;
}
