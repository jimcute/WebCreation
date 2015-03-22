<%@ Page Language="C#" AutoEventWireup="true"CodeFile="first.aspx.cs" Inherits="generate_page_runtime.first" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title>The New Page</title>
   <link href="css/site.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/jquery-ui.js" type="text/javascript"></script>
     <link href="css/popup-style.css"
        rel="stylesheet" type="text/css" />
   <script type="text/javascript">
       $("[id*=btn_add_menu]").live("click", function () {
           $("#show_menu").dialog({
               title: "jQuery Modal Dialog Popup",
               buttons: {
                   Close: function () {
                       $(this).dialog('close');
                   }
               },
           modal: true
       });
       return false;
       });
       $(document).ready(function () {
           $("#btn_add_code").click(function () {
               
           });
       });
       $(document).ready(function () {
           $(".div-img").mouseover(function () {
               $("#img_edit").css({ "display": "block" });
           });
       });
       $(document).ready(function () {
           $(".div-img").mouseout(function () {
               $("#img_edit").css({ "display": "none" });
           });
       });
       $(document).ready(function () {
           $(".div-contents").mouseover(function () {
               $("#img_edit2").css({ "display": "block" });
           });
       });
       $(document).ready(function () {
           $(".div-contents").mouseout(function () {
               $("#img_edit2").css({ "display": "none" });
           });
       });
       $(document).ready(function () {
           $(".content").mouseover(function () {
               $("#img_edit3").css({ "display": "block" });
           });
       });
       $(document).ready(function () {
           $(".content").mouseout(function () {
               $("#img_edit3").css({ "display": "none" });
           });
       });
   </script>
    <style>
        .menu{
    width: 500px;
    margin: 0px auto;
    font-family: Arial, Helvetica, sans-serif;
    font-weight: bold;
    font-size: 14px;
}
.menu ul li a:link, div ul li a:visited {
    display: block;
    background-color: #f1f1f1;color:#000;
    text-align: center;
    text-decoration: none;
    padding: 4px;
    border-bottom: 1px solid #fff;
    width: 150px;
}
.menu ul li a:hover{
    background-color: #ccc;
}
.menu ul li ul li a:link, li ul li a:visited {
    display: block;
    background-color: #f1f1f1;
    color: #000;
    text-align: center;
    text-decoration: none;
    padding: 4px;
    border-bottom: 1px solid #fff;
    width: 150px;
}
.menu ul li ul li a:hover {
    background-color: #ccc;
}
.menu ul {
    list-style-type: none;
    margin: 0px;
    padding: 0px;
}
.menu ul li {
    float: left;
    margin-left: 5px;
}
.menu ul li ul li {
    float: none;
    margin-left: 0px;
}
.menu ul li ul {
    display: none;
}
.menu li:hover ul{
    display: block;
}
    </style>
</head>
<body>
   <form id="form1" runat="server">
       <div style="display:none;">
           <asp:literal id="output" runat="server"/>
       </div>
        <header>
        <div id="header" runat="Server" class="header">
           <div style="display:none;" id="show_menu">
               This is a demo.
               <div id="code1">
               <span><a href="#">Home</a></span>&nbsp;&nbsp;<span><a href="#">Message</a></span>&nbsp;&nbsp;<span><a href="#">Photo</a></span>
               </div>
               <span><button id="btn_add_code">
                   Add
               </button></span>
           </div>

           <div runat="Server"  class="menu">
               <asp:repeater ID="rptCategories" runat="server" OnItemDataBound="rptCategories_ItemDataBound">
                    <headertemplate>
                        <div class="menu"><ul>
                    </headertemplate>
                    <itemtemplate>
                        <li>
                            <a href='#'>< %#Eval("Name") %></a>
                            <asp:literal ID="ltrlSubMenu" runat="server"></asp:literal>
                        </li>
                    </itemtemplate>
                <footertemplate>
                       </ul></div>
                </footertemplate>
                </asp:repeater>
           </div>
            <div class="bottom-right">
               <asp:Button ID="btn_edit_header" OnClick="btn_edit_header_Click" runat="Server" Text="Edit Header"/>
               <asp:Button Visible="False" ID="btn_save_header" OnClick="btn_save_header_Click" runat="Server" Text="Save Changes"/>
            </div>
           <div style="display:none;" runat="Server" id="div_add_menu">
               <button id="btn_add_menu">
                   Add menu
               </button>
           </div>
           
        </div>
        </header>
        <div id="body" runat="Server" class="container">
            <div class="bottom-right">
               <asp:Button Visible="False" ID="btn_edit_body" OnClick="btn_edit_body_Click" runat="Server" Text="Edit Body"/>
               <asp:Button Visible="False" ID="btn_save_body" OnClick="btn_save_body_Click" runat="Server" Text="Save Changes"/>
            </div>
               <section class="first-section">
                   <div class="div-img">
                       <img style="height:250px; width:300px;" src="images/img1.jpg" alt=""/>
                       <asp:ImageButton CssClass="img-edit" ID="img_edit" OnClick="img_edit_Click" runat="server" ImageUrl="~/web-design/images/edit-icon.png" />
                       <asp:LinkButton Visible="False" OnClick="hl_save_Click" ID="hl_save" runat="server">
                           <img src="images/save.jpg" class="img-save" alt="Save changes" />
                       </asp:LinkButton>
                   </div>
                   <div class="div-contents">
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       <asp:ImageButton CssClass="img-edit" ID="img_edit2" OnClick="img_edit2_Click" runat="server" ImageUrl="~/web-design/images/edit-icon.png" />
                   </div>
                   <div class="content">
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       This is a demo text. Edit these text before publish  the site.
                       <asp:ImageButton CssClass="img-edit" ID="img_edit3" OnClick="img_edit3_Click" runat="server" ImageUrl="~/web-design/images/edit-icon.png" />
                   </div>
               </section>
        </div>
        <footer>
        <div id="footer" runat="Server" class="footer">
            <div class="bottom-right">
               <asp:Button ID="btn_edit_footer" OnClick="btn_edit_footer_Click" runat="Server" Text="Edit Footer"/>
               <asp:Button Visible="False" ID="btn_save_footer" OnClick="btn_save_footer_Click" runat="Server" Text="Save Changes"/>
            </div>
        </div>
        </footer>
   </form>
</body>
</html>
