<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reg�strate - HotelsCloud</title>
    <style>
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
        .logo {
            width: 100px; /* Tama�o reducido del logo */
            margin-bottom: 20px; /* Espacio debajo del logo */
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .cancel-button {
            background-color: gray;
        }
    </style>
</head>
<body>
    <form action="procesarRegistro" method="POST">
        <img src="images/LOGO.png" alt="Logo HotelsCloud" class="logo">
        <h2>Reg�strate</h2>
        <input type="text" name="nombre" placeholder="Nombre y Apellido" required>
        <input type="email" name="correo" placeholder="Correo Electr�nico" required>
        <input type="text" name="nombreUsuario" placeholder="Nombre de Usuario" required>
        <input type="password" name="contrasena" placeholder="Contrase�a" required>
        
        <!-- Mostrar mensaje de error si el correo ya existe -->
        <% 
            String error = (String) request.getAttribute("error"); 
            if (error != null) { 
        %>
            <p style="color: red; font-size: 14px; text-align: left;"><%= error %></p>
        <% 
            } 
        %>
        
        <button type="submit">Reg�strate</button>
        <button type="reset" class="cancel-button">Cancelar</button>
    </form>
</body>
</html>
