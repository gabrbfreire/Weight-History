function loginRegister(name, password, type) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) { //this = xhttp
      document.getElementById("result").innerHTML = this.responseText;
    }
  };
  xhttp.open("POST", "login-register.php?n=" + name + "&p=" + password + "&t=" + type, true);
  xhttp.send();
}

//Register
document.getElementById('submitR').addEventListener('submit', function () {
  var name = document.getElementById('nameR').value;
  var password = document.getElementById('passwordR').value;
  loginRegister(name, password, 'r');
  event.preventDefault(); //Impede submit do form
});