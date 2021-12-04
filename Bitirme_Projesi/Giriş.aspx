<%@ Page Language="C#"  debug="true" AutoEventWireup="true" CodeBehind="Giriş.aspx.cs" Inherits="Bitirme_Projesi.Default" %>

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
       
  <div class="auto-style1">
    <div class="back-img">
      <div class="sign-in-text">
         
        <a href="Giriş.aspx"><h2 class="active">Giriş</h2></a>
        <a href="Kayıt.aspx"><h2 class="nonactive">Kayıt Ol</h2></a>
        
      </div>
      <div class="layer">
      </div>
      <p class="point">&#9650;</p>
    </div>
    <div class="form-section">
     
      
       
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        
            <span class="mdl-textfield__error">Kullanıcı Adı</span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="mdl-textfield__label"  ></asp:TextBox>
          <label class="mdl-textfield__label" for="sample3"></label>
          
        </div>
        <br/>   
        <br/>
       
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          
            <label class="mdl-textfield__label" for="sample3">Şifre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="mdl-textfield__label"></asp:TextBox>
          
          <span class="mdl-textfield__error"></span>

            <br /><br />
            <center><asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label></center>
        </div>
        
        
    
     
    </div>
      <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="sign-in-btn mdl-button mdl-js-ripple-effect mdl-js-button mdl-button--raised mdl-button--colored" style="left: 0px; bottom: 0" />
 </div>

        
    </form>
</body>
</html>
