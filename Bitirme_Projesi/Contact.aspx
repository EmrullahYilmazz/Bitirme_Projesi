<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Bitirme_Projesi.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="template/fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/ -->
    <link href="template/css/bootstrap.min.css" rel="stylesheet">
    <link href="template/css/templatemo-xtra-blog.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <header class="tm-header" id="tm-header">
        <div class="tm-header-wrapper">
            <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="tm-site-header">
                <div class="mb-3 mx-auto tm-site-logo"><i class="fas fa-times fa-2x"></i></div>            
                <h1 class="text-center">Cryptology Repository System</h1>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
            <nav class="tm-nav" id="tm-nav">            
                <ul>
                    <li class="tm-nav-item"><a href="Default.aspx" class="tm-nav-link">
                        <i class="fas fa-home"></i>
                        Ana Sayfa
                    </a></li>
                    <li class="tm-nav-item"><a href="Create.aspx" class="tm-nav-link">
                        <i class="fas fa-pen"></i>
                        İçerik Gönder
                    </a></li>
                    <li class="tm-nav-item"><a href="About.aspx" class="tm-nav-link">
                        <i class="fas fa-users"></i>
                        Sistem Hakkında 
                    </a></li>
                    <li class="tm-nav-item active"><a href="Contact.aspx" class="tm-nav-link">
                        <i class="far fa-comments"></i>
                        İletişim
                    </a></li>
                      </a></li>
                     <li class="tm-nav-item"><a href="Giriş.aspx" class="tm-nav-link">
                        
                        Çıkış Yap
                    </a></li>
                </ul>
            </nav>
            <div class="tm-mb-65">
                
                <a href="https://instagram.com/emrullah_yilmzz" class="tm-social-link">
                    <i class="fab fa-instagram tm-social-icon"></i>
                </a>
                <a href="https://www.linkedin.com/in/emrullah-yılmaz-800656189/" class="tm-social-link">
                    <i class="fab fa-linkedin tm-social-icon"></i>
                </a>
            </div>
            
        </div>
    </header>
    <div class="container-fluid">
        <main class="tm-main">
                      
            <div class="row tm-row tm-mb-45">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
                   
                </div>                
            </div>
            <div class="row tm-row tm-mb-120">
                <div class="col-12">
                    <h2 class="tm-color-primary tm-post-title tm-mb-60">Contact Us</h2>
                </div>
                <div class="col-lg-7 tm-contact-left">
                    <form method="POST" action="" class="mb-5 ml-auto mr-0 tm-contact-form">                        
                        <div class="form-group row mb-4">
                            <label for="name" class="col-sm-3 col-form-label text-right tm-color-primary">İsim</label>
                            <div class="col-sm-9">
                                <input class="form-control mr-0 ml-auto" name="name" id="name" type="text" required>                            
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="email" class="col-sm-3 col-form-label text-right tm-color-primary">Email</label>
                            <div class="col-sm-9">
                                <input class="form-control mr-0 ml-auto" name="email" id="email" type="email" required>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="subject" class="col-sm-3 col-form-label text-right tm-color-primary">Konu</label>
                            <div class="col-sm-9">
                                <input class="form-control mr-0 ml-auto" name="subject" id="subject" type="text" required>
                            </div>
                        </div>
                        <div class="form-group row mb-5">
                            <label for="message" class="col-sm-3 col-form-label text-right tm-color-primary">Mesaj</label>
                            <div class="col-sm-9">
                                <textarea class="form-control mr-0 ml-auto" name="message" id="message" rows="8" required></textarea>                                
                            </div>
                        </div>
                        <div class="form-group row text-right">
                            <div class="col-12">
                                <button class="tm-btn tm-btn-primary tm-btn-small">Gönder</button>                        
                            </div>                            
                        </div>                                
                    </form>
                </div>
                
            </div>      
            <footer class="row tm-row">
                
                <div class="col-md-6 col-12 tm-color-gray tm-copyright">
                    Copyright Emrullah Yılmaz
                </div>
            </footer>
        </main>
    </div>
    <script src="template/js/jquery.min.js"></script>
    <script src="template/js/templatemo-script.js"></script>
    </form>
</body>
</html>
