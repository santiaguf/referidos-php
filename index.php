<?php
include("conexion.php");

if(isset($_POST['login']))
{
    $nick= $_POST['nick'];
    $pass= md5(md5($_POST['pass']));
    $b_user=mysql_query("SELECT * FROM usuarios WHERE nick='$nick'");    
    $ses = @mysql_fetch_assoc($b_user) ;
    if(@mysql_num_rows($b_user))
    {
        if($ses['pass'] == $pass)
        {
            $_SESSION['id']=        $ses["id"];
            $_SESSION['fecha']=    $ses["fecha"];
            $_SESSION['nick']=    $ses["nick"];
            $_SESSION['mail']=    $ses["mail"];
            $_SESSION['ip']=        $ses["ip"];
            $_SESSION['perfil']=    $ses["perfil"];
			
        }
        else
        {
            echo "<center><h3><p class='bg-danger'>Nombre de usuario o Contrase&ntilde;a incorrecta.</p></h3></center>";
        }
    }
    else
    {
        echo "<center><h3><p class='bg-danger'>Nombre de Usuario o contrase&ntilde;a incorrecta.</p></h3></center>";
    }
}
    
if(isset($_GET['modo']) == 'desconectar')
{
    session_destroy();
    echo '<meta http-equiv="Refresh" content="1;url=index.php"> ';
    exit ('Te has desconectado del sistema.');
}
    
if(isset($_SESSION['id']))
{   
    header ("Location: perfil.php"); //si inicia sesión correctamente es redirigido a perfil.php
}
else
{
?>
<!DOCTYPE html">
<html lang="es">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Referidos v1.0">
    <meta name="author" content="santiago bernal betancourth">
    <link rel="shortcut icon" href="images/favicon.ico">
    <title>Referidos v1.0</title>
    <link href="estilos/bootstrap.min.css" rel="stylesheet">
    <link href="estilos/signin.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<center><img src="images/logo.jpg" / ></center>
<h1 class="form-signin-heading" align="center">Referidos v1.0 </h1>
<div class="container">
    <form class="form-signin" role="form" name="login_user" action="index.php" method="post" />
    <h2 class="form-signin-heading">Inicio de sesión</h2>
        <input type="text" name='nick' class="form-control" placeholder="nombre de usuario" required autofocus>
        <input type="password" name='pass' class="form-control" placeholder="contraseña" required>
        <button class="btn btn-lg btn-primary btn-block" name="login" type="submit">Entrar</button>
        <b><a href="reset.php">resetear contraseña</a><b><br /><br />
    </form>
	<center>Referidos 1.0  - <a href="http://aumentada.net">Aumentada Soluciones inform&aacute;ticas </a> © Todos los derechos reservados </center>
</div>
<?php
}
?>
</body>
</html>