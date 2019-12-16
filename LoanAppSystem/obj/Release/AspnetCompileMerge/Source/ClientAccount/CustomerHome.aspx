<%@ Page Title="HOME" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerHome.aspx.cs" Inherits="LoanAppSystem.ClientAccount.CustomerHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                         <ul id="menu-top" class="nav navbar-nav navbar-right">
                             <li><a class="menu-top-active"  href="CustomerHome.aspx">HOME</a></li>
                            <li><a   href="CustomerLoanDetails.aspx">CUSTOMER DETAILS</a></li>
                            <li><a href="LoanDetails.aspx">LOAN DETAILS</a></li>
                            <li><a href="EMIDetails.aspx">ENI DETAILS</a></li>
                            <li><a href="Payments.aspx">PAYMENT DETAILS</a></li>
                          


                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <div class="content-wrapper">
        <div class="container">

            <!---side menu--->
            <div class="col-md-4">
                <div class="row">
                    <div class="navbar navbar">
                        <div class="container">
                            <div class="nav-heading">
                                <div class="navbar-brand">MENU LIST</div>
                            </div>
                            <ul class="nav navbar-side">
                                <li class=""><a href="#home" data-toggle="tab">Home</a></li>
                                <li class=""><a href="#changepass" data-toggle="tab">Change Password</a></li>
                                <li><a href="../Default.aspx"><i class="fa fa-sign-out fa-2x"></i>&nbsp;Log Out</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!---/end side menu--->

            <div class="col-md-8">
                <div class="page-content">
                    <div class="row">
                        <div class="tab-content">
                            <!----\\\\\\\\\\\\\\\\Home tab\\\\\\\\\\\\\\--->
                            <div class="tab-pane active in" id="home">

                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="page-head-line">HOME</h4>

                                        </div>

                                    </div>
                                    <div class="col-md-offset-4">
                                         <asp:Button ID="linkButton" runat="server"  CausesValidation="False" Visible="False"></asp:Button>
                                        <span class="welcometxt">
                                            <br />
                                            <br />
                                            Welcome!
                              
                                            <br />
                                        </span>
                                    </div>

                                </div>

                            </div>
                            <!-----\\\\\\\\\\\\\\\\Change Password\\\\\\\\\\\--->
                            <div class="tab-pane fade" id="changepass">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="page-head-line">Change Password</h4>

                                        </div>
                                    </div>
                                    
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" CssClass="alert alert-dismissible alert-danger" />
                                   


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
                                                                <label>Old Password :</label></td>
                                                            <td>
                                                                <asp:TextBox ID="oldpasstxt" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="newpasstxt"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>New Password :</label></td>
                                                            <td>
                                                                <asp:TextBox ID="newpasstxt" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="oldpasstxt"></asp:RequiredFieldValidator>
                                                               

                                                            </td>
                                                        </tr>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <asp:Button ID="changebutt" Text="Update Password" runat="server" CssClass="btn btn-info" Width="200px" OnClick="changebutt_Click"/>
                                        </div>
                                    </div>



                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
