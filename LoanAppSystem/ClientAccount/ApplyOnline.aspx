<%@ Page Title="ApplyOnline" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApplyOnline.aspx.cs" Inherits="LoanAppSystem.ClientAccount.ApplyOnline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-12 ">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="../Default.aspx">HOME</a></li>
                            <li><a class="menu-top-active" href="ApplyOnline.aspx">APPLY ONLINE</a></li>
                            <li><a href="Download.aspx">DOWNLOAD FORMS</a></li>
                            <li><a href="../About.aspx">ABOUT US</a></li>
                            <li><a href="../Contact.aspx">CONTACT US</a></li>


                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <div class="content-wrapper">
        <div class="container">
             <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Apply Online</h4>
                           <asp:Button ID="linkButton" runat="server" CausesValidation="False" Visible="False"></asp:Button>
                </div>

            </div>
            <div class="col-md-offset-3">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <div class="panel panel-default">

                    <div class="panel-body">
                        <div class="table-responsive">
                            <table>
                                <tbody>
                                    <tr>

                                        <td style="width: 168px">
                                            <label class="">Loan type :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList runat="server" ID="loantxt" CssClass="form-control" Width="400px">
                                                <asp:ListItem Value="-1">select loan type</asp:ListItem>
                                                <asp:ListItem>Home Loan</asp:ListItem>
                                                <asp:ListItem>Vechile Loan</asp:ListItem>
                                                <asp:ListItem>Gold Loan</asp:ListItem>
                                                <asp:ListItem>Personal Loan</asp:ListItem>

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Loan type Required" InitialValue="-1" ControlToValidate="loantxt"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>


                                    <tr>

                                        <td style="width: 168px">
                                            <label>Loan Amount :</label></td>
                                        <td>
                                            <asp:TextBox ID="amounttxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ErrorMessage="Loan Amount Required" ControlToValidate="amounttxt"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 168px">
                                            <label>Customer Name:</label></td>
                                        <td>
                                            <asp:TextBox ID="nametxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Name Required" ControlToValidate="nametxt"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 168px">
                                            <label>Monthly Income:</label></td>
                                        <td>
                                            <asp:TextBox ID="incometxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="Income Required" ControlToValidate="incometxt"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 168px">
                                            <label>Age:</label></td>
                                        <td>
                                            <asp:TextBox ID="agetxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Age Required" ControlToValidate="agetxt"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                     <tr>

                                                            <td style="width: 168px">
                                                                <label>Gender :</label></td>
                                                            <td>
                                                                <asp:RadioButtonList ID="gendertxt" runat="server">
                                                                    <asp:ListItem>Male</asp:ListItem>
                                                                    <asp:ListItem>Female</asp:ListItem>
                                                                </asp:RadioButtonList>

                                                            </td>
                                                        </tr>
                                     <tr>
                                        <td style="width: 168px">
                                            <label>Address:</label></td>
                                        <td>
                                            <asp:TextBox ID="addresstxt" runat="server" CssClass="form-control" Width="400px" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="Address Required" ControlToValidate="addresstxt"></asp:RequiredFieldValidator>
                                        </td>

                                    </tr>
                                     <tr>
                                        <td style="width: 168px">
                                            <label>Work Phone Number</label></td>
                                        <td>
                                            <asp:TextBox ID="worktxt" runat="server" CssClass="form-control" Width="400px" TextMode="Number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" ErrorMessage="Work Phone Required" ControlToValidate="worktxt"></asp:RequiredFieldValidator>
                                        </td>

                                    </tr>
                                      <tr>
                                        <td style="width: 168px">
                                            <label>Mobile Phone Number</label></td>
                                        <td>
                                            <asp:TextBox ID="phonetxt" runat="server" CssClass="form-control" Width="400px" TextMode="Number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red" ErrorMessage="Phone Number Required" ControlToValidate="phonetxt"></asp:RequiredFieldValidator>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td style="width: 168px">
                                            <label>Email Address:</label></td>
                                        <td>
                                            <asp:TextBox ID="emailtxt" runat="server" CssClass="form-control" TextMode="Email" Width="400px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="Email Required" ControlToValidate="emailtxt"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                   
                                </tbody>

                            </table>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <asp:Button ID="submitbtn" Text="Submit" runat="server" CssClass="btn btn-info" Width="200px" OnClick="submitbtn_Click" />
                        &nbsp;&nbsp;&nbsp   
                        <asp:Button ID="cancelbtn" Text="Cancel" runat="server" CssClass="btn btn-danger" Width="200px" CausesValidation="False" OnClick="cancelbtn_Click" />
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
