<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayıt.aspx.cs" Inherits="Bitirme_Projesi.Kayıt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="style.css"/>

    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            height: 600px;
            width: 500px;
            margin: auto;
            box-shadow: 0px 30px 125px -5px #000;
            left: 0px;
            top: 0px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1">
    <div class="back-img">
      <div class="sign-in-text">
          
        <a href="Giriş.aspx"><h2 class="nonactive">Giriş</h2></a>
        <a href="Kayıt.aspx"><h2 class="active">Kayıt Ol</h2></a>
      </div>
      <div class="layer">
      </div>
      <p class="point">&#9650;</p>
    </div>
    <div class="form-section">
     
      
       
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        
            <span class="mdl-textfield__error">Kullanıcı Adı</span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="mdl-textfield__label"  ></asp:TextBox>
          
          
        </div>
        <br/>   
        <br/>
       
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          
            <label class="mdl-textfield__label" for="sample3">Şifre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="mdl-textfield__label"></asp:TextBox>
            <br />
            <br />
            <br />
          
          <span class="mdl-textfield__error"></span>

             <span class="mdl-textfield__error">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            &nbsp;<asp:TextBox ID="TextBox3" runat="server"  CssClass="mdl-textfield__label"></asp:TextBox>
            <br/><br />
           
           
            <center><asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label></center>


        </div>
        
        
    
     
    </div>
      <asp:Button ID="Button1" runat="server" Text="Kayıt Ol" CssClass="sign-in-btn mdl-button mdl-js-ripple-effect mdl-js-button mdl-button--raised mdl-button--colored" />
 </div> <br />
        </div>
    </form>
</body>
</html>
