<?php
//este archivo debe estar en el servidor
    include 'conexionBDHemodialisis.php';

    $correo_electronico = $_POST["correo_electronico"];
    $codigo = $_POST["codigo"];

    $consultar = $conn->query("CALL crud_select_pacientes ('".$correo_electronico."', '".$codigo."')");
    //$consultar = $conn->query("SELECT nombre, telefono_cel FROM pacientes WHERE correo_electronico='".$correo_electronico."' and codigo='".$codigo."'");

    $resultado = array();
    while($extraerDatos = $consultar->fetch_assoc()){
        $resultado = $extraerDatos;
    }

    echo json_encode($resultado);
    //$connect->close(); 
?>