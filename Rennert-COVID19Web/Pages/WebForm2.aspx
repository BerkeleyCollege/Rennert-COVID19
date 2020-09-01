<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Rennert_COVID19Web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, charset=utf-8" />
    <title>Rennert Covid-19 Status</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style-WebForm2.css" rel="stylesheet" />
    <link href="images/favicon16.png" rel="icon" />
    <link href="images/favicon32.png" rel="icon" />
    <link href="images/favicon180.png" rel="apple-touch-icon" />

</head>
<body id="main">
    <div class="container">
        <form id="form2" runat="server">
            <asp:TextBox ID="results" runat="server" Text="" CssClass="testingLabel"></asp:TextBox>
            <img id="berkLogo" src="images/RennertLogo.png" alt="Rennert Logo">
            <div class="form-bottom">
                <div class="form-group">
                    <div class="col-md-12">
                        <asp:Label ID="Label1" runat="server" Text="Label" font-size="32px"></asp:Label>
                    </div>
                    <div class="col-md-12" id="main2">
                        <asp:Label class="boldClass" ID="Label2" runat="server" Text="" font-size="32px"></asp:Label>
                    </div>
                    <div class="col-md-12">
                        <asp:Label ID="dateToday" runat="server" font-size="24px"></asp:Label>
                    </div>
                    <div class="row">
                        <div class="form-top">
                            <ul class="list-group">
                                <li>Stay home</li>
                                <li>Contact your healthcare provider (if experiencing symptoms)</li>
                                <li>Notify your supervisor or the school directly at 212-867-8700. Students should email <a href="mailto:LDugger@rennert.com">LDugger@rennert.com</a>. Faculty and staff should email your supervisor and email <a href="mailto:pcovelli@rennert.com">pcovelli@rennert.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <script type="text/javascript" src="../Scripts/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../Scripts/script.js"></script>
</body>
</html>
