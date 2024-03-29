<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCliente.aspx.cs" Inherits="Admin.EditCliente" %>

<%@ Register TagPrefix="MsgBox" Src="UCMessageBox.ascx" TagName="UCMessageBox" %>
<%@ Register TagPrefix="uc1" TagName="UCNavigation" Src="UCNavigation.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <title>| Sistema Admin ingolar | Clientes</title>
	
	<link rel="stylesheet" href="Styles/estilo.css" type="text/css"/>
	<script src="Util.js" type="text/javascript"></script>

  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">BODY {
	FONT-SIZE: 8.5pt
}
TD {
	FONT-SIZE: 8.5pt
}
TH {
	FONT-SIZE: 8.5pt
}
BODY {
	BACKGROUND-IMAGE: url(Images/fond1.jpg); BACKGROUND-COLOR: #ffffff
}
</style></head>
  
  <body>
 <MsgBox:UCMessageBox ID="messageBox" runat="server" ></MsgBox:UCMessageBox>
  <form id="form1" runat="server">
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
    <tr>
      <td colspan="4"><img src="Images/top_fifiu1.jpg" width="1000" height="143"></td>
    </tr>
    <tr>
      <td width="200" rowspan="2" align="left" valign="top" bgcolor="#9F9C97"><uc1:UCNavigation id="UserControl2" runat="server"></uc1:UCNavigation></td>
	  <td height="20" colspan="3" valign="top"  >&nbsp; <h2> Alta de cliente</h2></td>
    </tr>
    <tr>
      <td width="10" height="350" valign="top">&nbsp;</td>
      <td width="770" valign="top" colspan="3">
          <!--Contenido aqui-->
          <table>
              <tr>
                  <td>
                      <asp:Label runat="server" Text="Id Cliente" ID="labelClienteId"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox runat="server" ID="txtId"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>
                      <asp:Label runat="server" Text="Nombre" ID="label1"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox runat="server" ID="txtNombre"></asp:TextBox>
                      <ASP:RequiredFieldValidator id="rfvValidarNombre" runat="server" errormessage="El nombre es obligatorio" width="132px" controltovalidate="txtNombre" display="Dynamic"></ASP:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>
                      <asp:Label runat="server" Text="Domicilio" ID="label2"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox runat="server" ID="txtDomicilio"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>
                      <asp:Label runat="server" Text="Telefono" ID="label4"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox runat="server" ID="txtTelefono"></asp:TextBox>
                  </td>
              </tr>

              <tr>
                  <td>
                      <asp:Label runat="server" Text="Email" ID="label3"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
                  </td>
              </tr>
              
                  <tr>
                  <td>
                      <asp:Button runat="server" ID="btnGuardar" Text="Guardar" CssClass="boton_formulario" OnClick="btnGuardar_Click"/>
                  </td>
                  <td>
                      
                  </td>
              </tr>
          </table>

        </td>
      
    </tr>
    <tr>
      <td width="200" height="30" bgcolor="#d2d2c6">&nbsp;</td>
      <td width="10" bgcolor="#d2d2c6">&nbsp;</td>
      <td width="770" bgcolor="#d2d2c6">&nbsp;</td>
      <td width="20" bgcolor="#d2d2c6">&nbsp;</td>
    </tr>
  </table>
   
  
    </form>
</body>
</html>
