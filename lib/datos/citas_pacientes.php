<?php
    include 'conexionBDHemodialisis.php';

    $id_paciente = $_POST["id_pacientes"];

    $consultar = $conn->query("CALL SP_citas_pacientes ('".$id_paciente."')");

    $resultado = array();
    while($extraerDatos = $consultar->fetch_assoc()){
        $resultado = $extraerDatos;
    }

    echo json_encode($resultado);
    //$connect->close(); 
?>
<?php
    include 'conexionBDHemodialisis.php';

    $json = array();
    $id_paciente = $_POST["id_pacientes"];
    
    $check_query = "SELECT * FROM citas WHERE id_pacientes = ".$id_paciente."";
    $result = mysqli_query($conn, $check_query);

    while ($registro = mysqli_fetch_array($result))
    {
        $citas_paciente["id_citas"] = $registro["id_citas"];
        $citas_paciente["id_pacientes"] = $registro["id_pacientes"];
        $citas_paciente["id_empleados"] = $registro["id_empleados"];
        $citas_paciente["id_camilla"] = $registro["id_camilla"];
        $citas_paciente["fecha"] = $registro["fecha"];
        $citas_paciente["hora"] = $registro["hora"];
        
        $json["Citas_pacien"][] = $cursosalumno;
    }

    echo json_encode($json);
?>