﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="admin_Profile" %>

<%@ Register Src="~/admin/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/admin/side-bar.ascx" TagPrefix="uc1" TagName="sidebar" %>
<%@ Register Src="~/admin/footer.ascx" TagPrefix="uc1" TagName="footer" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Creation Inc.</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <link href="plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    <link href="dist/css/style.css" rel="stylesheet" />
    <script src="dist/js/script.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="skin-blue">
    <form id="form1" runat="server">
        <div class="wrapper">

            <%--// header goes here--%>
            <uc1:header runat="server" ID="header" />
            <%--// side bar--%>
            <uc1:sidebar runat="server" ID="sidebar" />
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">

                    <!-- Main row -->
                    <div class="row">
                        <%--message--%>
                        <asp:Panel runat="server" Visible="false" ID="pnl_message">
                            <section runat="server" id="msg" class="col-lg-8 connectedSortable">
                                <div class="box box-success" runat="server" id="error">
                                    <div class="box-header">
                                        <h3 class="box-title" runat="server" id="div_msg"></h3>
                                        <!-- /.box-tools -->
                                        <div class="box-tools pull-right">
                                            <button class="btn btn-box-tool" data-widget="remove" id="remove" onclick="close();"><i class="fa fa-times"></i></button>
                                        </div>
                                        <!-- /.box-tools -->
                                    </div>
                                    <!-- /.box-header -->
                                </div>
                            </section>
                        </asp:Panel>
                        <!-- /.box -->
                        <!-- Main col -->
                        <section class="col-lg-12 connectedSortable">
                            <div class="box box-success">
                                <div class="box-header">
                                    <i class="fa fa-gear"></i>
                                    <h3 class="box-title">User Profile</h3>
                                    &nbsp;<span> (Update your profile)</span>
                                    <br />
                                    <br />
                                    <br />
                                    <div class="col-lg-3 connectedSortable">
                                        <%--<img src="#" runat="server" id="img_user" />--%>
                                        <asp:Image runat="server" ID="img_user" Height="100" Width="100" />
                                        <br />
                                        Change Photo
                                        <asp:FileUpload ID="up_img" runat="server" /><br />
                                    </div>
                                    <div class="col-lg-3 connectedSortable">
                                        Username:<asp:TextBox runat="server" placeholder="Username" class="form-control" ID="txt_username"></asp:TextBox>
                                        First Name:<asp:TextBox runat="server" placeholder="First Name" class="form-control" ID="txt_firstname"></asp:TextBox>
                                        Last Name:<asp:TextBox runat="server" placeholder="Last Name" class="form-control" ID="txt_lastname"></asp:TextBox>
                                        Address:<asp:TextBox runat="server" placeholder="Address" class="form-control" ID="txt_address"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-3 connectedSortable">
                                        City:<asp:TextBox runat="server" placeholder="City" class="form-control" ID="txt_city"></asp:TextBox>
                                        State:<asp:TextBox runat="server" placeholder="State" class="form-control" ID="txt_state"></asp:TextBox>
                                        Country:<asp:TextBox runat="server" placeholder="Country" class="form-control" ID="txt_country"></asp:TextBox><br />
                                        <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-flat bg-green" OnClick="btn_update_Click" />
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </section>
            </div>
            <uc1:footer runat="server" ID="footer" />
        </div>
    </form>
    <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- jQuery UI 1.11.2 -->
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Morris.js charts -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js" type="text/javascript"></script>
    <!-- daterangepicker -->
    <script src="plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>

    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js" type="text/javascript"></script>

    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js" type="text/javascript"></script>
</body>
</html>
