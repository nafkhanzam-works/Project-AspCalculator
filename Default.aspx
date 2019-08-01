<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3.Calculator" %>
<!-- 
    Author: Moch. Nafkhan Alzamzami
-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <script>
        document.addEventListener('keyup', (e) => {
            const doClick = (name) => document.getElementsByName(name)[0].click();
            const arr = document.getElementsByName('_' + e.key);
            if (arr.length) {
                arr[0].click();
            } else {
                switch (e.key) {
                    case '-': doClick('Minus'); break;
                    case '+': doClick('Plus'); break;
                    case '*': doClick('Multiply'); break;
                    case 'x': doClick('Multiply'); break;
                    case 'X': doClick('Multiply'); break;
                    case 'Backspace': doClick('C'); break;
                    case '/': doClick('Divide'); break;
                    case ':': doClick('Divide'); break;
                    case '(': doClick('OpenBracket'); break;
                    case ')': doClick('CloseBracket'); break;
                    case 'Enter': doClick('Enter'); break;
                }
            }
        });
    </script>
    <style>
        .container {
            width: 400px;
            border: 5px solid black;
            box-sizing: border-box;
            padding: 10px;
        }
        .screen {
            border: 3px solid black;
            padding: 10px;
            font: bold 20px arial;
            width: 100%;
            box-sizing: border-box;
            word-wrap: break-word;
            min-height: 10vh;
        }
        .row-container {
            box-sizing: border-box;
            display: flex;
            flex-direction: row;
        }
        .button {
            box-sizing: border-box;
            flex-grow: 1;
            margin: 5px;
            height: 10vh;
            font: bold 20px Arial;
            border: 3px solid black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" onkeypress="onKey">
        <div style="display: flex; justify-content: center;">
            <div class="container">
                <asp:TextBox ID="content" runat="server" Text="" CssClass="screen" ReadOnly="true" />
                <div class="row-container">
                    <asp:Button ID="_1" runat="server" Text="1" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="_2" runat="server" Text="2" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="_3" runat="server" Text="3" CssClass="button" OnClick="Button_Click" />  
                    <asp:Button ID="Divide" runat="server" Text=":" CssClass="button" OnClick="Button_Click" />
                </div>
                <div class="row-container">
                    <asp:Button ID="_4" runat="server" Text="4" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="_5" runat="server" Text="5" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="_6" runat="server" Text="6" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="Multiply" runat="server" Text="X" CssClass="button" OnClick="Button_Click" />
                </div>
                <div class="row-container">
                    <asp:Button ID="_7" runat="server" Text="7" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="_8" runat="server" Text="8" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="_9" runat="server" Text="9" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="Minus" runat="server" Text="-" CssClass="button" OnClick="Button_Click" />
                </div>
                <div class="row-container">
                    <asp:Button ID="_0" runat="server" Text="0" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="OpenBracket" runat="server" Text="(" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="CloseBracket" runat="server" Text=")" CssClass="button" OnClick="Button_Click" />
                    <asp:Button ID="Plus" runat="server" Text="+" CssClass="button" OnClick="Button_Click" />
                </div>
                <div class="row-container">
                    <asp:Button ID="C" runat="server" Text="C" CssClass="button" OnClick="C_Click" />
                    <asp:Button ID="CE" runat="server" Text="CE" CssClass="button" OnClick="CE_Click" />
                    <asp:Button ID="Enter" runat="server" CssClass="button" style="flex-grow: 2;" Text="Enter" OnClick="Enter_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
