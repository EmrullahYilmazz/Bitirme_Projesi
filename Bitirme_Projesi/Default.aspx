<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bitirme_Projesi.Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="template/fontawesome/css/all.min.css"> 
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
                    <li class="tm-nav-item active"><a href="Default.aspx" class="tm-nav-link">
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
                    <li class="tm-nav-item"><a href="Contact.aspx" class="tm-nav-link">
                        <i class="far fa-comments"></i>
                        İletişim
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
            <div class="row tm-row">
                <div class="col-lg-8 tm-post-col">
                    <div class="tm-post-full">                    
                        <div class="mb-4">
                            <h2 class="pt-2 tm-color-primary tm-post-title">Başlık</h2>

                            <br />
                            <p class="tm-mb-40">Örnek</p>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bitirme_ProjesiConnectionString %>" SelectCommand="SELECT * FROM [post]" DeleteCommand="DELETE FROM [post] WHERE [postid] = @postid" InsertCommand="INSERT INTO [post] ([hash], [kullaniciadi]) VALUES (@hash, @kullaniciadi)" UpdateCommand="UPDATE [post] SET [hash] = @hash, [kullaniciadi] = @kullaniciadi WHERE [postid] = @postid">
                                <DeleteParameters>
                                    <asp:Parameter Name="postid" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="hash" Type="String" />
                                    <asp:Parameter Name="kullaniciadi" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="hash" Type="String" />
                                    <asp:Parameter Name="kullaniciadi" Type="String" />
                                    <asp:Parameter Name="postid" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="856px" OnRowDeleted="GridView2_RowDeleted" OnRowDeleting="GridView2_RowDeleting1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                
                            </asp:GridView>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Çözülmesini istediğiniz hash değerini girin"></asp:Label><a>----</a><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Çözülmesini istediğiniz hashin key değerini girin"></asp:Label><a>----</a><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="HASH ÇÖZ" OnClick="Button1_Click"/>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                            <br />
                            ÇÖZÜLMÜŞ ŞİFRENİZ=><asp:Label ID="Label5" runat="server" Text=""></asp:Label>

                            
                          
                        </div>
                        
                       
                       
                    </div>
                </div>
                <aside class="col-lg-4 tm-aside-col">
                                       
                </aside>
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
