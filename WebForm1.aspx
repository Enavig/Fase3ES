<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="E_4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
 <style>
body {
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-height: 95vh;
    color: black;
    padding: 15px;
    
}


/**/
@keyframes moveRight {
    0%{
        transform: translateX(0);
    }
    50% {
        transform: translateX(15px); /* Cambia px distancia que quieras que se mueva */
    }
    100%{
        transform: translateX(0);
    }
   
}
 
body h2 {
    font-size: 50px;
    text-transform: uppercase;
    font-family: 'Times New Roman', Times, serif;
    animation: moveRightLeft 4s ease infinite; /* aniamción 4 segundos y se repite  */
}
  


body h2 {
    filter: drop-shadow(20px  6px 6px black);
    font-size: 50px;
    text-transform: uppercase;
    font-family: 'Times New Roman', Times, serif;
    animation: moveRight 4s linear infinite; /* animación  2 segundos y se repite  */
}

body h2 {
    font-size: 50px;
    text-transform: uppercase;
    font-family: 'Times New Roman', Times, serif;
    transition: color 0.9s ease; /* La transición de color dura 0.3 segundos */
}
  
 
/**/
body h2{
    font-size: 50px;
    text-transform: uppercase;
    font-family: 'Times New Roman', Times, serif;
     
   
}


form {
    font-family: 'Times New Roman', Times, serif;
    box-shadow: 0 0 20px rgba(243, 244, 250, 0.5);
    padding: 50px 35px;
    border-radius: 25px;
    display: flex;
    flex-direction: column;
    text-align: center;
    padding: 30px;
    width: 380px;
    position: absolute;
   
   
}

form p{
    color:black;
    font-size:larger;
}

.groupr{
    
    position: relative;
    width: 98%;
    margin-bottom: 20px;
     
}

.pass-container{
 position: relative;
}
 

.toggle-pass{
  position: absolute;
  right: 10px;
  top: 50%;
  transform: translateY(-50%);
  cursor: pointer;
}

.groupr i{
    color: white;
    
}

input{
    width: 100%; 
    border-radius: 25px;
    box-shadow: 0 0 20px rgba(243, 244, 250, 0.5);
    text-align: center;
    font-size: small;   
}
.form-ingresar{
    display: flex;
    flex-direction: row-reverse;
    align-items:center;
    justify-content: center;
}

@keyframes move-right-left {
    0% { transform: translateX(0); }
    50% { transform: translateX(10px); } /* Mueve a la derecha */
    100% { transform: translateX(0); } /*  posición original */
}

.move {
    animation: move-right-left 2s ease-in-out infinite; /* Repite la animación de forma continua */
}

.form-ingresar a{
    color: black;
    
}

 

 </style>
    <form id="formulario" runat="server">       
   
     
       <h2>Bienvenido</h2>

        <P> ¡Iniciar sesión! </P>
         
        <div class="groupr">
            <i class='bx bx-envelope'></i>
            <asp:TextBox ID="tbUsuario" runat="server" Placeholder="Usuario"></asp:TextBox>
           
        </div>
       
        <div class="groupr">
             <i class='bx bx-lock'></i>
                <div class="pass-container">
                    <asp:TextBox ID="tbContraseña" runat="server" placeholder= "Contraseña"></asp:TextBox>
                    <i class="toggle-pass fas fa-eye" onclick="togglePasswordVisibility()"></i>
                </div>
        </div>
        <asp:Button ID="BtnI" runat="server" Text="Ingresar" OnClick="BtnI_Click" />
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    </form>
         
     
</body>
</html>

