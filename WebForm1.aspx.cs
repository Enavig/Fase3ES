using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace E_4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnI_Click(object sender, EventArgs e)
        {
            // Configurar la cadena de conexión
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;

            // conexión  base de datos
            using (SqlConnection connection = new SqlConnection(conectar))
            {
                // Definir la consulta SQL para validar el usuario y contraseña
                string query = "SELECT COUNT(*) FROM Usuario WHERE Usuario = @Usuario AND Contraseña = @Contraseña";

                // Se crear comando SQL y establecer  parámetros
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Usuario", tbUsuario.Text);
                    command.Parameters.AddWithValue("@Contraseña", tbContraseña.Text);

                    // Abrir  y ejecutar conexión de la consulta
                    connection.Open();
                    int count = (int)command.ExecuteScalar(); // Devuelve el número de filas afectadas

                    // Verificar Informacion ingresada
                    if (count > 0)
                    {
                        // Página de inicio
                        Response.Redirect("Index.aspx");
                    }
                    else
                    {
                        // Mostrar un mensaje de error si las credenciales son incorrectas
                        lblError.Text = "Usuario o contraseña incorrectos";
                    }

                }
            }
        }

    }
}