<%@ Page Title="Home " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoanAppSystem.Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a class="menu-top-active" href="Default.aspx">HOME</a></li>

                            <li><a href="ClientAccount/ApplyOnline.aspx">APPLY ONLINE</a></li>
                            <li><a href="ClientAccount/Download.aspx">DOWNLOAD FORMS</a></li>
                            <li><a href="About.aspx">ABOUT US</a></li>
                            <li><a href="Contact.aspx">CONTACT US</a></li>


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

                                <li class=""><a href="#reg" data-toggle="tab">Registration</a></li>
                             
                                <li class=""><a href="#login" data-toggle="tab"><i class="fa fa-sign-in fa-2x"></i>&nbsp;Log In</a></li>


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
                             <asp:Label ID="Label1" CssClass="label" runat="server"></asp:Label>
                            <!----\\\\\\\\\\\\\\\\Home tab\\\\\\\\\\\\\\--->
                            <div class="tab-pane active in" id="home">

                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="page-head-line">HOME</h4>
                                          <p class="wlcometxt"> Welcome Adehyeman Savings and Loans Company Ltd.</p> 
                                          <p>This company was licensed by the Bank of Ghana on 11th January 2005 under the Non-Bank Financial Institutions Law (PNDCL 328) as a Non-Bank </p>  
<blockquote> Financial Institution (NBFI). The company is involved in business in providing different type of loan since 2005. We are reliable in mortgage will allow a borrower to get a loan that perfectly suits his needs and financial conditions. Our mission is to provide progressive and superior financial solution to make you feel at ease.</blockquote>
                                            
<p>  Consequently, we know what is require to get best result in the quickest possible time. Our loan officers are available to take appointment at a time that is most convenient for you. </p>

                                        </div>

                                    </div>
                                    <div class="col-md-offset-6">

                                        <asp:Button ID="linkButton" runat="server" CausesValidation="False" Visible="False"></asp:Button>

                                    </div>

                                </div>

                            </div>
                            <!-----\\\\\\\\\\\\\\\\Registration\\\\\\\\\\\--->
                            <div class="tab-pane fade " id="reg">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="page-head-line">Customer Registration</h4>
                                           
                                        </div>
                                    </div>

                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" CssClass="alert alert-dismissible alert-danger" ValidationGroup="register" />
                                </div>


                                <div class="panel panel-default">
                                    <div class="panel-body">

                                        <div class="table-responsive">
                                            <table>
                                                <tbody>
                                                    <tr>

                                                        <td style="width: 168px">
                                                            <label class="">FullName :</label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="fullnametxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="usernamevalid" runat="server" ForeColor="Red" ErrorMessage="Full Name Required" ControlToValidate="fullnametxt" ValidationGroup="register"></asp:RequiredFieldValidator>

                                                        </td>
                                                    </tr>


                                                    <tr>

                                                        <td style="width: 168px">
                                                            <label>UserName :</label></td>
                                                        <td>
                                                            <asp:TextBox ID="regusertxt" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="regusertxt" ValidationGroup="register"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 168px">
                                                            <label>Password :</label></td>
                                                        <td>
                                                            <asp:TextBox ID="regpasstxt" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Password Required" ControlToValidate="regpasstxt" ValidationGroup="register"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>

                                                        <td style="width: 168px">
                                                            <label>Phone Number :</label></td>
                                                        <td>
                                                            <asp:TextBox ID="phonetxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="Phone Number Required" ControlToValidate="phonetxt" ValidationGroup="register"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>

                                                        <td style="width: 168px">
                                                            <label>Email Address :</label></td>
                                                        <td>
                                                            <asp:TextBox ID="emailtxt" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="Email Address Required" ControlToValidate="emailtxt" ValidationGroup="register"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <asp:Button ID="regbtn" Text="LogIn" runat="server" CssClass="btn btn-info" Width="200px" OnClick="regbtn_Click" ValidationGroup="register" />
                                        &nbsp;&nbsp;&nbsp;
                                                     <asp:Button ID="regcancel" Text="Cancel" runat="server" CssClass="btn btn-danger" Width="200px" OnClick="regcancel_Click" CausesValidation="False" ValidationGroup="register" />
                                    </div>
                                </div>




                            </div>
                            <!-----\\\\\\\\\\\\\\\\\\\\\\ Login \\\\\\\\\\--->
                            <div class="tab-pane fade " id="login">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h4 class="page-head-line">LogIn</h4>

                                                </div>
                                            </div>
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
                                                                        <asp:TextBox ID="userlogintxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="userlogintxt" ValidationGroup="login"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>

                                                                 <tr>
                                                                    <td style="width: 168px">
                                                                        <label class="">Customer ID :</label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="findtxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="Findtxt" ValidationGroup="login"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>

                                                                    <td style="width: 168px">
                                                                        <label>Password :</label></td>
                                                                    <td>
                                                                        <asp:TextBox ID="passtxt" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Password Required" ControlToValidate="passtxt" ValidationGroup="login"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>

                                                            </tbody>

                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="panel-footer">
                                                    <asp:Button ID="loginbtn" Text="LogIn" runat="server" CssClass="btn btn-info" Width="200px" OnClick="loginbtn_Click" ValidationGroup="login" />
                                                    &nbsp;&nbsp;&nbsp;
                                                     <asp:Button ID="cancelbtn" Text="Cancel" runat="server" CssClass="btn btn-danger" Width="200px" OnClick="cancelbtn_Click" CausesValidation="False" ValidationGroup="login" />
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
        </div>
    </div>
</asp:Content>
