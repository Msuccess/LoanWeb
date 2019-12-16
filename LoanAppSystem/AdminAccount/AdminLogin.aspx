<%@ Page Title="AdminLogin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="LoanAppSystem.AdminAccount.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="home-bar">
                        
                        logo</div>
                </div>

            </div>
        </div>
    </section>

    <div class="content-wrapper">
        <div class="container">

            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="page-head-line">Admin  Login
                        </h4>

                    </div>
                </div>
                <div class="col-md-offset-3">

                    <asp:Label ID="label1" runat="server"></asp:Label>
                    <br />
                    <div class="panel panel-default">

                        <div class="panel-body">
                            <div class="table-responsive">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td style="width: 168px">
                                                <label class="">User Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="usertxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="usernamevalid" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="usertxt"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>


                                        <tr>

                                            <td style="width: 168px">
                                                <label> Password :</label></td>
                                            <td>
                                                <asp:TextBox ID="passtxt" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Password Required" ControlToValidate="passtxt"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                      
                                    </tbody>

                                </table>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <asp:Button ID="setbutt" Text="LogIn" runat="server" CssClass="btn btn-info" Width="200px" OnClick="setbutt_Click" />
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>
</asp:Content>
