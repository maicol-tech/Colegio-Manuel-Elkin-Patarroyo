<?php
    require_once('conexion.php');

    $correos = $_POST["correos"];
    $mensajes = $_POST["mensajes"];

    $query = "INSERT INTO mensaje
                         (`correo`, `mensaje`)
                    VALUES ('$correos','$mensajes')";

    $insert = mysqli_query($conexion,$query);
            if($insert == true){
                echo "Registro guardado";
            }else{
                echo "Error al guardar el registro";
            }
?>