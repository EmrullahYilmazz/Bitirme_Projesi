<%@ Page Language="C#"  debug="true" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bitirme_Projesi.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="style.css"/>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
  <div class="signin">
    <div class="back-img">
      <div class="sign-in-text">
        <h2 class="active">Sign In</h2>
        <h2 class="nonactive">Sign Up</h2>
      </div><!--/.sign-in-text-->
      <div class="layer">
      </div><!--/.layer-->
      <p class="point">&#9650;</p>
    </div><!--/.back-img-->
    <div class="form-section">
     
      
        <!--Email-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        
            <asp:TextBox ID="TextBox1" runat="server" CssClass="mdl-textfield__label"  ></asp:TextBox>
          <label class="mdl-textfield__label" for="sample3">Email</label>
          <span class="mdl-textfield__error">Enter a correct Email</span>
        </div>
        <br/>   
        <br/>
        <!--Password-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          
            <asp:TextBox ID="TextBox2" runat="server" CssClass="mdl-textfield__label"></asp:TextBox>
          <label class="mdl-textfield__label" for="sample3">Password</label>
          <span class="mdl-textfield__error">Minimum 8 characters</span>
        </div>
        <br/>
        <p class="forgot-text">Forgot Password ?</p>
        <!--CheckBox-->
        <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox-1">
        
        <span class="keep-text mdl-checkbox__label">Keep me Signed In</span>
      </label>
     
    </div><!--/.form-section-->
    
    <!--<button class="sign-in-btn mdl-button mdl-js-ripple-effect mdl-js-button mdl-button--raised mdl-button--colored">
      Sign In
    </button><!--/button-->
      <asp:Button ID="Button1" runat="server" Text="Button" CssClass="sign-in-btn mdl-button mdl-js-ripple-effect mdl-js-button mdl-button--raised mdl-button--colored" />
 </div><!--/.signin-->

        <div>
        </div>
    </form>
</body>
</html>
