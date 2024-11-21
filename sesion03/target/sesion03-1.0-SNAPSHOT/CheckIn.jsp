<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HotelsCloud - Check-In</title>
    <style>
        /* Estilos básicos */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
        }
        form {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin: 50px auto;
            max-width: 400px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }
        form input, form button {
            width: calc(100% - 20px);
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        form button {
            background-color: #007BFF;
            color: white;
            cursor: pointer;
            border: none;
        }
        form button:hover {
            background-color: #0056b3;
        }
        .input-checkbox {
            width: auto;
            display: inline-block;
            margin-right: 10px;
            margin-bottom: 5px;
        }
        .gray-section {
            background: #f0f0f0;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
            text-align: left;
        }
        .gray-section label {
            display: inline-block;
            margin: 0;
            border: none;
            padding: 0;
        }
        .logo {
            width: 100px;
            margin-bottom: 20px;
        }
        .form-title {
            font-size: 14px;
            color: #333;
            margin-bottom: 20px;
        }
        .error-message {
            color: red;
            font-size: 12px;
            margin-top: -10px;
            text-align: left;
        }
    </style>
    <script>
        function validarFormulario(event) {
            // Obtén los valores de los campos
            const nombre = document.getElementById("firstName").value.trim();
            const apellido = document.getElementById("lastName").value.trim();
            const documento = document.getElementById("idDocument").value.trim();
            const correo = document.getElementById("email").value.trim();

            // Obtén el elemento para mostrar el error
            const errorDiv = document.getElementById("emailError");

            // Limpia el mensaje de error previo
            errorDiv.textContent = "";

            // Validar campos
            if (!nombre || !apellido || !documento || !correo) {
                // Si algún campo está vacío, muestra el error debajo del campo del correo
                errorDiv.textContent = "Por favor, completa toda la información requerida.";
                event.preventDefault(); // Evita el envío del formulario
                return false;
            }
            return true; // Permite el envío si todo está completo
        }
    </script>
</head>

<body>
    <form action="procesarCheckIn.jsp" method="POST" onsubmit="return validarFormulario(event)">
        <!-- Logo encima del formulario -->
        <img src="images/LOGO.png" alt="Logo HotelsCloud" class="logo"> 

        <!-- Título del formulario -->
        <p class="form-title">Para hacer tu Check-In, completa la siguiente información:</p>

        <!-- Campos del formulario -->
        <input type="text" id="firstName" name="firstName" placeholder="Ingresa tu nombre">
        <input type="text" id="lastName" name="lastName" placeholder="Ingresa tu apellido">
        <input type="text" id="idDocument" name="idDocument" placeholder="Ingresa tu número de documento">
        <input type="email" id="email" name="email" placeholder="Ingresa tu correo">

        <!-- Contenedor del mensaje de error -->
        <div id="emailError" class="error-message"></div>

        <br
        <!-- Servicios adicionales -->
        <div class="gray-section">
            <input type="checkbox" id="breakfast" name="breakfast" class="input-checkbox">
            <label for="breakfast">Desayuno</label><br>
            <input type="checkbox" id="airportTransport" name="airportTransport" class="input-checkbox">
            <label for="airportTransport">Transporte aeropuerto</label><br>
            <input type="checkbox" id="laundry" name="laundry" class="input-checkbox">
            <label for="laundry">Lavandería</label>
        </div>

        <!-- Botones -->
        <div>
            <button type="submit" class="button">Confirmar</button>
            <button type="button" class="button" style="background-color: gray;">Cancelar</button>
        </div>
    </form>
</body>
</html>
