using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IUWebTH
{
    public partial class PersonaAgregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            this.lblMensaje.Text = "";
            if (this.txtCedula.Text.Length == 0)
            {
                this.lblMensaje.Text = "DEBES INGRESAR LA CEDULA...";
                this.txtCedula.Focus();
                return;
            }
            else
            {
                try
                {
                    int res = BibliotecaDatos.Persona.Insertar(this.txtCedula.Text, this.txtApellidos.Text, this.txtNombres.Text, 
                        Convert.ToDateTime(this.txtFechaNac.Text), Convert.ToDouble(this.txtPeso.Text));
                    if (res > 0)
                        this.lblMensaje.Text = "REGISTRO AGREGADO CON EXITO";
                    else
                        this.lblMensaje.Text = "NO SE PUDO AGREGAR EL REGISTRO";
                }
                catch(Exception ex)
                {
                    this.lblMensaje.Text = ex.Message.ToString();
                }
               
            }

        }
    }
}