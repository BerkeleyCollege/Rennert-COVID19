<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rennert_COVID19Web.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="Rennert COVID-19" content="*" />
    <title>Rennert Covid-19</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="images/favicon16.png" rel="icon" />
    <link href="images/favicon32.png" rel="icon" />
    <link href="images/favicon180.png" rel="apple-touch-icon" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <asp:Panel ID="formPanel" runat="server">
            <form class="registration-form" id="mainForm" runat="server">
                <asp:TextBox ID="question1result" runat="server" CssClass="testingLabel"></asp:TextBox>
                <asp:TextBox ID="question2result" runat="server" CssClass="testingLabel"></asp:TextBox>
                <asp:TextBox ID="question3result" runat="server" CssClass="testingLabel"></asp:TextBox>
                <asp:TextBox ID="question4result" runat="server" CssClass="testingLabel"></asp:TextBox>
                <asp:TextBox ID="question5result" runat="server" CssClass="testingLabel"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" Text="Label1" CssClass="testingLabel"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label2" CssClass="testingLabel"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label3" CssClass="testingLabel"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Label4" CssClass="testingLabel"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Label5" CssClass="testingLabel"></asp:Label>
                <asp:TextBox ID="choiceResult" runat="server" CssClass="testingLabel"></asp:TextBox>
                <asp:Label ID="resultsFinal" runat="server" CssClass="testingLabel"></asp:Label>
                <asp:Label ID="dateToday" runat="server" CssClass="testingLabel"></asp:Label>

                <img id="berkLogo" src="images/RennertLogo.png" alt="Rennert Logo" />
                <br />

                <fieldset id="first-fieldset" class="openClose">
                    <div class="form-bottom">
                        <div class="form-group">
                            <label>Please type your full name.</label>
                            <asp:TextBox CssClass="ddlist shownElement" ID="questionName" runat="server" MaxLength="100" Style="width: 100%"></asp:TextBox>
                            <p>Please respond to each of the following questions truthfully and to the best of your knowledge</p>
                        </div>
                        <button type="button" class="btn btn-primary btn-next" id="initialClick">Next</button>
                    </div>
                </fieldset>

                <fieldset class="openClose">
                    <div class="form-bottom">
                        <div class="form-group">
                            <label>Please choose you role at Rennert</label>
                            <asp:DropDownList CssClass="form-control ddlist shownElement" ID="personRole" runat="server">
                                <asp:ListItem Value="0">Choose</asp:ListItem>
                                <asp:ListItem Value="Staff/Teachers">Staff/Teachers</asp:ListItem>
                                <asp:ListItem Value="Student">Student</asp:ListItem>
                                <asp:ListItem Value="Test Candidate">Test Candidate</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <button type="button" class="btn btn-primary btn-next">Next</button>
                    </div>
                </fieldset>

                <fieldset class="openClose">
                    <div class="form-bottom">
                        <div class="form-group">
                            <label>Have you knowingly been in close or proximate contact in the past 14 days with anyone who has tested positive for COVID-19 or who has or had symptoms of COVID-19?</label>
                            <asp:DropDownList CssClass="form-control ddlist shownElement" ID="question1" runat="server" onchange="questResults()">
                                <asp:ListItem Value="0">Choose</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                                <asp:ListItem Value="2">Yes</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <button type="button" class="btn btn-primary btn-next">Next</button>
                    </div>
                </fieldset>

                <fieldset class="openClose">
                    <div class="form-bottom">
                        <div class="form-group">
                            <label>Is your temperature 100.4F° (38C°) or above?</label>
                            <asp:DropDownList CssClass="form-control ddlist shownElement" ID="question2" runat="server" onchange="questResults()">
                                <asp:ListItem Value="0">Choose</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                                <asp:ListItem Value="2">Yes</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <button type="button" class="btn btn-primary btn-next">Next</button>
                    </div>
                </fieldset>

                <fieldset class="openClose">
                    <div class="form-bottom">
                        <div class="form-group">
                            <label>Have you tested positive for COVID-19 in the past 14 days?</label>
                            <asp:DropDownList CssClass="form-control ddlist shownElement" ID="question3" runat="server" onchange="questResults()">
                                <asp:ListItem Value="0">Choose</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                                <asp:ListItem Value="2">Yes</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <button type="button" class="btn btn-primary btn-next">Next</button>
                    </div>
                </fieldset>

                <fieldset class="openClose">
                    <div class="form-bottom">
                        <div class="form-group">
                            <label>Have you experienced any symptoms of COVID-19 in the past 14 days?</label><br />
                            <p>Some symptoms include:</p>
                            <ul class="list-group">
                                <li>Fever or chills</li>
                                <li>Cough</li>
                                <li>Shortness of breath of difficulty breathing</li>
                                <li>Fatigue</li>
                                <li>Muscle or body aches</li>
                                <li>Headache</li>
                                <li>New loss of taste or smell</li>
                                <li>Sore Throat</li>
                                <li>Congestion or runny nose</li>
                                <li>Nausea or vomiting</li>
                                <li>Diarrhea</li>
                            </ul>
                            <p><b>Note:</b> Certain medical conditions may display symptoms similar to COVID-19. For example, an individual may experience fatigue due to an autoimmune disease or shortness of breath due to asthma. If you have symptoms that are attributable to a separate medical condition that is not contagious and you are not otherwise experiencing any other COVID-19 symptoms, you may answer "No".</p>
                            <asp:DropDownList CssClass="form-control ddlist shownElement" ID="question4" runat="server" onchange="questResults()">
                                <asp:ListItem Value="0">Choose</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                                <asp:ListItem Value="2">Yes</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <button type="button" class="btn btn-primary btn-next">Next</button>
                    </div>
                </fieldset>

                <fieldset class="openClose">
                    <div class="form-bottom">
                        <div class="form-group">
                            <p> In addition to international travel restrictions, New York and New Jersey have announced travel advisories for individuals who have traveled to states with increasing rates of COVID-19. These travelers should self-quarantine for 14 days upon return and not visit a Berkeley College campus until after that time. The travel advisory does not apply to pass-through travel (such as rest stops or layovers) that is for a brief period of time. This list is subject to change.</p>
                            <label>Have you traveled within the past 14 days: 1) internationally; or 2) via cruise ship; or 3) to one or more of the following states/territories?  </label>
                            <ul class="list-group twoC">
                                <li>Alabama</li>
                                <li>Arkansas</li>
                                <li>California</li>
                                <li>Florida</li>
                                <li>Georgia</li>
                                <li>Guam</li>
                                <li>Hawaii</li>
                                <li>Iowa</li>
                                <li>Idaho</li>
                                <li>Illinois</li>
                                <li>Indiana</li>
                                <li>Kansas</li>
                                <li>Kentucky</li>
                                <li>Louisiana</li>
                                <li>Minnesota</li>
                                <li>Mississippi</li>
                                <li>Missouri</li>
                                <li>Nebraska</li>
                                <li>Nevada</li>
                                <li>North Carolina</li>
                                <li>North Dakota</li>
                                <li>Oklahoma</li>
                                <li>Puerto Rico</li>
                                <li>South Carolina</li>
                                <li>South Dakota</li>
                                <li>Tennessee</li>
                                <li>Texas</li>
                                <li>Utah</li>
                                <li>Virgin Islands</li>
                                <li>Virginia</li>
                                <li>Washington</li>
                                <li>Wisconsin</li>
                            </ul>
                            <asp:DropDownList CssClass="form-control ddlist shownElement" ID="question5" runat="server" onchange="questResults()">
                                <asp:ListItem Value="0">Choose</asp:ListItem>
                                <asp:ListItem Value="1">No</asp:ListItem>
                                <asp:ListItem Value="2">Yes</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <asp:Button ID="Button4" runat="server" OnClick="submit" OnClientClick="alertWindow();" AutoPostback="false;" CssClass="btn btn-primary btn-large btn-block" Text="Submit" />
                    </div>
                </fieldset>

                <div id="loadingModal" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <h3>Submitting request...</h3>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="100" aria-valuemax="100" style="width: 100%">
                                        Please wait....
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                            </div>
                        </div>
                    </div>
                </div>

            </form>
        </asp:Panel>
    </div>
    <script type="text/javascript" src="../Scripts/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
    <script type="text/javascript" src="../Scripts/script.js"></script>
    <script type="text/javascript">
        var ques1Value;
        var dropdown1 = document.getElementById('<%=question1.ClientID%>');

        var quest2Value;
        var dropdown2 = document.getElementById('<%=question2.ClientID%>');

        var quest3Value;
        var dropdown3 = document.getElementById('<%=question3.ClientID%>');

        var quest4Value;
        var dropdown4 = document.getElementById('<%=question4.ClientID%>');

        var quest5Value;
        var dropdown5 = document.getElementById('<%=question5.ClientID%>');

        var passFail;

        function questResults() {

            if (dropdown1 != null) {
                var myIndex1 = dropdown1.selectedIndex;
                if (myIndex1 != -1) {
                    quest1Value = dropdown1.options[myIndex1].value;
                }
            }

            if (dropdown2 != null) {
                var myIndex2 = dropdown2.selectedIndex;
                if (myIndex2 != -1) {
                    quest2Value = dropdown2.options[myIndex2].value;
                }
            }

            if (dropdown3 != null) {
                var myIndex3 = dropdown3.selectedIndex;
                if (myIndex3 != -1) {
                    quest3Value = dropdown3.options[myIndex3].value;
                }
            }

            if (dropdown4 != null) {
                var myIndex4 = dropdown4.selectedIndex;
                if (myIndex4 != -1) {
                    quest4Value = dropdown4.options[myIndex4].value;
                }
            }

            if (dropdown5 != null) {
                var myIndex5 = dropdown5.selectedIndex;
                if (myIndex5 != -1) {
                    quest5Value = dropdown5.options[myIndex5].value;
                }
            }

            console.log("Question 1:  " + quest1Value);
            var Label1 = document.getElementById('<%=Label10.ClientID%>');
            Label1.innerHTML = quest1Value;

            console.log("Question 2:  " + quest2Value);
            var Label2 = document.getElementById('<%=Label2.ClientID%>');
            Label2.innerHTML = quest2Value;

            console.log("Question 3:  " + quest3Value);
            var Label3 = document.getElementById('<%=Label3.ClientID%>');
            Label3.innerHTML = quest3Value;

            console.log("Question 4:  " + quest4Value);
            var Label4 = document.getElementById('<%=Label4.ClientID%>');
            Label4.innerHTML = quest4Value;

            console.log("Question 5:  " + quest5Value);
            var Label5 = document.getElementById('<%=Label5.ClientID%>');
            Label5.innerHTML = quest5Value;

            return false;
        };
    </script>
</body>
</html>
