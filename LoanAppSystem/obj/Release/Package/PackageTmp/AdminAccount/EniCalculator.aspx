<%@ Page Title="ENI CALCULATOR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EniCalculator.aspx.cs" Inherits="LoanAppSystem.EniCalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="AdminHome.aspx">HOME</a></li>
                            <li><a href="CustomerDetails.aspx">DETAILS</a></li>
                            <li><a href="loandetails.aspx">LOAN DETAILS</a></li>
                            <li><a class="menu-top-active" href="EniCalculator.aspx">ENI CALCULATOR</a></li>
                            <li><a href="Receivepayment.aspx">RECEIVE PAYMENT</a></li>
                            <li><a href="Reports.aspx">REPORTS</a></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <div class="label">
    <asp:Label ID="Label1" CssClass="label" runat="server"></asp:Label>
            <asp:Button ID="linkButton" runat="server" CausesValidation="False" Visible="False"></asp:Button>
        </div>
    <div class="content-wrapper">
        <div class="container">
            <div class="col-md-4">
                <div class="row">
                    <div class="navbar navbar">
                        <div class="container">
                            <div class="nav-heading">
                                <div class="navbar-brand">MENU LIST</div>
                            </div>
                            <ul class="nav navbar-side">
                                <li class=""><a href="#cal" data-toggle="tab">CALCULATOR</a></li>
                               
                                <li class=""><a href="#data" data-toggle="tab">VIEW DATA</a></li>
                                <li><a href="AdminLogin.aspx"><i class="fa fa-sign-out fa-2x"></i>&nbsp;Log Out</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
               


            <div class="col-md-8">
                <div class="page-content">
                    <div class="row">
                        <div class="tab-content">
                            <!----\\\\\\\\\\\\\\\\Calculator tab\\\\\\\\\\\\\\--->
                            <div class="tab-pane active in" id="cal">

                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="page-head-line">Calculator</h4>

                                        </div>
                                    </div>

                                 
                                    <br />

                                    <div class="panel panel-default">

                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table>
                                                    <tbody>
                                                        <tr>

                                                            <td style="width: 168px">
                                                                <label class="">Loan Amount :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="loantxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="usernamevalid" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="loantxt"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>


                                                        <tr>

                                                            <td style="width: 168px">
                                                                <label>Tenure Year :</label></td>
                                                            <td>
                                                                <asp:TextBox ID="monthtxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Tenure Year Required" ControlToValidate="monthtxt"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Interest Rate :</label></td>
                                                            <td>
                                                                <asp:TextBox ID="ratetxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Interest Rate Required" ControlToValidate="ratetxt"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>

                                    </div>
                                </div>



                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="page-head-line">Insert Amount</h4>

                                        </div>
                                    </div>

                                    <div class="panel panel-default">

                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table>
                                                    <tbody>
                                                        <tr>

                                                            <td style="width: 168px">
                                                                <label>Customer ID :</label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="idtxt" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Customer_ID" DataValueField="Customer_ID">
                                                                    <asp:ListItem></asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoanApplicationDbConnectionString %>" SelectCommand="SELECT [Customer ID] AS Customer_ID FROM [CustRegistration]"></asp:SqlDataSource>
                                                            </td>
                                                        </tr>


                                                        <tr>

                                                            <td style="width: 168px; height: 41px;">
                                                                <label>Loan Amount :</label></td>
                                                            <td style="height: 41px">
                                                                <asp:TextBox ID="amounttxt" runat="server" CssClass="form-control" TextMode="Number" Height="42px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="EMI Amount Required" ControlToValidate="amounttxt"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Interest Amount :</label></td>
                                                            <td>
                                                                <asp:Label ID="interestAmount" runat="server" Text="Interest Amount " CssClass="form-control"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Total :</label></td>
                                                            <td>
                                                                <asp:Label ID="totalAmount" runat="server" Text="Total" CssClass="form-control"></asp:Label>

                                                            </td>
                                                        </tr>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <asp:Button ID="Insertbtn" Text="Insert" runat="server" CssClass="btn btn-info" Width="308px" OnClick="Insertbtn_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="tab-pane active in " id="data">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <asp:GridView ID="GridView1" runat="server" CssClass="tabel tabel-condensed" AllowPaging="True" 
                                            AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                                            CellPadding="4" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                                                <asp:BoundField DataField="EMIAmount" HeaderText="EMIAmount" SortExpression="EMIAmount" />
                                                <asp:BoundField DataField="InterestAmount" HeaderText="InterestAmount" SortExpression="InterestAmount" />
                                                <asp:BoundField DataField="Total" HeaderText="Amount Lend" SortExpression="Total" />
                                            </Columns>
                                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                            <RowStyle BackColor="White" ForeColor="#003399" />
                                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                            <SortedDescendingHeaderStyle BackColor="#002876" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LoanApplicationDbConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [InsertAmount]">
                                        </asp:SqlDataSource>

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
