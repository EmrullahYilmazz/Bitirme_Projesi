<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Bitirme_Projesi.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="template/fontawesome/css/all.min.css"> 
	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/ -->
    <link href="template/css/bootstrap.min.css" rel="stylesheet">
    <link href="template/css/templatemo-xtra-blog.css" rel="stylesheet">

    <title>Hoşgeldiniz</title>
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
                    <li class="tm-nav-item active"><a href="About.aspx"  class="tm-nav-link">
                        <i class="fas fa-users"></i>
                        Sistem Hakkında
                    </a></li>
                    <li class="tm-nav-item"><a href="Contact.aspx" class="tm-nav-link">
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
            <!-- Search form -->
                   
            <div class="row tm-row tm-mb-45">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
                    
                </div>
            </div>
            <div class="row tm-row tm-mb-40">
                <div class="col-12">                    
                    <div class="mb-4">
                        <h2 class="pt-2 tm-mb-40 tm-color-primary tm-post-title">Sistemin İşleyişi Hakkında</h2>
                        <p>
                            Sistem, kendiniz dışında başka hiç kimsenin bilmesini istemediğiniz verileri saklamanıza olanak sağlar.
                        </p>
                        <p>
                            İçerik Gönder kısmından verilerinizi şifreleyin ve size verilen hash key değerini bir yere not edin.
                            <br />
                            Hash değeri olmazsa veriler geri döndürülemez şekilde kaybedilir.
                            <br />
                            Ana Sayfada görülen veritabanı sadece size aittir. Veritabanında sizin şifrelediğiniz her hash için ayrı bir satır yaratılacaktır.
                            <br />
                            Orada mevcut olan hash değerini kopyalayıp istenilen yere yapıştırın sonrasında istenilen yere size kayıt esnasında verilen hash keyi girin.
                        </p>                            
                    </div>                    
                </div>
            </div>
            <div class="row tm-row tm-mb-120">
                <div class="col-lg-4 tm-about-col">
                    <div class="tm-bg-gray tm-about-pad">
                        <div class="text-center tm-mt-40 tm-mb-60">
                            <i class="fas fa-bezier-curve fa-4x tm-color-primary"></i>                            
                        </div>                        
                        <h2 class="mb-3 tm-color-primary tm-post-title">Arkaplan</h2>
                        <p class="mb-0 tm-line-height-short">
                            Arkaplanda şifrele butonuna bastığınız an veriniz, MD-5 Algoritması ve özel oluşturulmuş hash key generator ile birleştirilerek şifrelenir.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 tm-about-col">
                    <div class="tm-bg-gray tm-about-pad">
                        <div class="text-center tm-mt-40 tm-mb-60">
                            <i class="fas fa-users-cog fa-4x tm-color-primary"></i>                            
                        </div>                        
                        <h2 class="mb-3 tm-color-primary tm-post-title">İşlevsellik</h2>
                        <p class="mb-0 tm-line-height-short">
                            Sadece bir butona basarak verinizi hızlıca şifreleyin!
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 tm-about-col">
                    <div class="tm-bg-gray tm-about-pad">
                        <div class="text-center tm-mt-40 tm-mb-60">
                            <i class="fab fa-creative-commons-sampling fa-4x tm-color-primary"></i>                            
                        </div>                        
                        <h2 class="mb-3 tm-color-primary tm-post-title">Güvenlik ve Saldırı Önleme</h2>
                        <p class="mb-0 tm-line-height-short">
                             Sisteme kaydetmiş olduğunuz veri hash key değeri olmadan çözülmez. Herkes kendi verisi dışındaki verileri göremez. Hash ve hash key değeri MSSQL veritabanında saklıdır ve yetkisiz erişime kapalıdır.
                        </p>
                    </div>
                </div>
            </div>            
             <center><div class="row tm-row tm-mb-60">
                <div class="col-12">
                    <hr class="tm-hr-primary  tm-mb-55">
                </div>                
               <div class="col-lg-6 tm-mb-60 tm-person-col">
                    <div class="media tm-person">
                        <img src="template/img/1.jpg" width="200" height="200" alt="Image" class="img-fluid mr-4">
                        <div class="media-body">
                            <h2 class="tm-color-primary tm-post-title mb-2">Emrullah Yılmaz</h2>
                            <h3 class="tm-h3 mb-3">ASP.Net Developer</h3>
                            <p class="mb-0 tm-line-height-short">
                                Information Systems Engineering at Mugla Universty
                            </p>
                        </div>
                    </div>
                </div>
            </div>    </center>    
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
