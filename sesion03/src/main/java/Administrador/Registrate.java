package Administrador;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/procesarRegistro")
public class Registrate extends HttpServlet {

    // Correo simulado para verificar si ya existe
    private static final String CORREO_EXISTENTE = "lolitapalta11@gmail.com";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String nombreUsuario = request.getParameter("nombreUsuario");
        String contrasena = request.getParameter("contrasena");

        // Validar que los campos no estén vacíos
        if (nombre.isEmpty() || correo.isEmpty() || nombreUsuario.isEmpty() || contrasena.isEmpty()) {
            request.setAttribute("error", "Todos los campos son obligatorios.");
            request.getRequestDispatcher("AdministradorRegistro.jsp").forward(request, response);
            return;
        }

        // Verificar si el correo ya está registrado
        if (CORREO_EXISTENTE.equals(correo)) {
            request.setAttribute("error", "El correo electrónico ya está registrado.");
            request.getRequestDispatcher("AdministradorRegistro.jsp").forward(request, response);
            return;
        }

        // Aquí podrías agregar la lógica para guardar los datos del nuevo usuario

        // Si el registro es exitoso, redirigir a la página de inicio de sesión o bienvenida
        request.setAttribute("mensaje", "Registro exitoso. Por favor, inicie sesión.");
        request.getRequestDispatcher("login.html").forward(request, response);
    }
}
