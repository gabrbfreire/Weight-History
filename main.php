<?php
  session_start();
  if (!isset($_SESSION['usuario'])) {
    header('yourFile.php');
    exit();
  }
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
  <link rel="stylesheet" href="CSS/style.css">
  <link rel="stylesheet" href="CSS/main.css">
  <title>Document</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="index.html">Weight History</a>

    <button class="navbar-toggler" type="buttom" data-toggle="collapse data-target=" #navbarSupportedContent">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="#" id="anchor-usuario"><?php echo $_SESSION['usuario'];?></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#adicionar" id="anchor-adicionar">Adicionar Peso</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" id="anchor-sobre">Sobre</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.html" id="anchor-sair">Sair</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container">
    <div class="row">
      <div class="col col1 m-3">
        <table class="table table-light table-striped table-bordered table-hover table-sm" >
          <thead>
            <tr>
              <th class="title" style="width:10%;">Data</th>
              <th class="title" style="width:10%;">Peso</th>
              <th class="title" style="width:.5%;">Alterar</th>
              <th class="title" style="width:.5%;">Excluir</th>
            </tr>
            <tbody id="table">

            </tbody>
          </thead>
        </table>
      </div>
      <div class="col">
        <canvas id="myChart" width="400" height="400"></canvas>
      </div>
    </div>
    <div class="row mt-5" id="adicionar">
      <div class="col "></div>
      <form id="submitW" class="h-100" method="POST">
        <h3 class="text-light text-center mb-3">Adicionar Peso</h3>
        <div class="form-group">
          <input class="border rounded p-2 w-100" id="peso" type="number" min="30" name="peso" placeholder="Peso"
            tabindex="1" required />
        </div>
        <div class="form-group">
          <button class="btn btn-info float-right" type="submit" name="submit" tabindex="3">
            Adicionar
          </button>
        </div>
        <h5 id="result" class="text-light"></h5>
      </form>
      <div class="col"></div>
    </div>
  </div>
</body>
<script src="https://kit.fontawesome.com/ff0f4c191d.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script src="JS/main.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
  integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
</script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
  integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
</script>

</html>