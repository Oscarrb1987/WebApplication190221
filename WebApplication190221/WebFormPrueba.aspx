<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebFormPrueba.aspx.cs" Inherits="WebApplication190221.WebFormPrueba" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Listado de usuarios</h1>
       
    <table class ="table">
    
<tr>
   <td>
       <asp:Label ID="LbIusuario" runat="server" Text="IDusuario:"></asp:Label>
 </td>
    <td>
       <asp:TextBox ID="TxtIDusuario" runat="server"></asp:TextBox>
    </td>
    
</tr>

 <tr>
   <td>
       <asp:Label ID="LbNombre" runat="server" Text="Nombre:"></asp:Label>
    </td>
     <td>
       <asp:TextBox ID="TxNombre" runat="server"></asp:TextBox>
  </td>
   
</tr>

<tr>
    <td>
       <asp:Label ID="LbApellidos" runat="server" Text="Apellidos:"></asp:Label>
        </td>
        <td>
       <asp:TextBox ID="TxApellidos" runat="server"></asp:TextBox>
       </td>
</tr>

<tr>
   <td>
       <asp:Label ID="LbDireccion" runat="server" Text="Direccion:"></asp:Label>
    </td>
    <td>
       <asp:TextBox ID="TxDireccion" runat="server"></asp:TextBox>
  </td>
</tr>

<tr>
   <td>
       <asp:Label ID="LbMail" runat="server" Text="Mail:"></asp:Label>
    </td>
    <td>
       <asp:TextBox ID="TxMail" runat="server"></asp:TextBox>
  </td>
   
</tr>

<tr>
   <td>
       <asp:Button ID="BtAceptar" runat="server" Text="Aceptar" OnClick="BtAceptar_Click" />
  </td>
</tr>

</table>

</asp:Content>

