<%@ Page Title="RECEIVE PAYMENT" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Receivepayment.aspx.cs" Inherits="LoanAppSystem.AdminAccount.Receivepayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="AdminHome.aspx">HOME</a></li>
                            <li><a href="CustomerDetails.aspx">CUSTOMER DETAILS</a></li>
                            <li><a href="loandetails.aspx">LOAN DETAILS</a></li>
                            <li><a href="EniCalculator.aspx">ENI CALCULATOR</a></li>
                            <li><a class="menu-top-active" href="Receivepayment.aspx">RECEIVE PAYMENT</a></li>
                            <li><a href="Reports.aspx">REPORTS</a></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>


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
                                <li class=""><a href="#view" data-toggle="tab">Received Payment</a></li>
                                <li class=""><a href="#add" data-toggle="tab">Add Payment</a></li>
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
                            <!----\\\\\\\\\\\\\\\\View tab\\\\\\\\\\\\\\--->
                            <div class="tab-pane active in" id="view">
                                <div class="col-md-12">
                                    <h4 class="page-head-line">Payment Received</h4>

                                </div>
                                <asp:Label ID="Label1" runat="server" ></asp:Label>
                                <br />
                                <asp:GridView ID="GridView1" runat="server"  CssClass="table table-condensed" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:BoundField DataField="CustormerID" HeaderText="CustormerID" SortExpression="CustormerID" />
                                        <asp:BoundField DataField="numberOfpayment" HeaderText="numberOfpayment" SortExpression="numberOfpayment" />
                                        <asp:BoundField DataField="DatePayed" HeaderText="DatePayed" DataFormatString="{0:D}" SortExpression="DatePayed" />
                                        <asp:BoundField DataField="AmountPayed" HeaderText="AmountPayed" SortExpression="AmountPayed" />
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
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LoanApplicationDbConnectionString %>" SelectCommand="SELECT * FROM [PaymentReceived]"></asp:SqlDataSource>
                            </div>



                            <!----\\\\\\\\\\\\\\\\ADD tab\\\\\\\\\\\\\\--->
                            <div class="tab-pane " id="add">
                                <div class="container">
                                    <div class="col-md-12">
                                        <h4 class="page-head-line">Add Payment</h4>

                                    </div>

                                    <div class="panel panel-default">

                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table>
                                                    <tbody>
                                                        <tr>

                                                            <td style="width: 168px">
                                                                <label class="">Customer ID :</label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="idtxt" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Customer_ID" DataValueField="Customer_ID">
                                                                    <asp:ListItem></asp:ListItem>
                                                                </asp:DropDownList>   
                                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoanApplicationDbConnectionString %>" SelectCommand="SELECT [Customer ID] AS Customer_ID FROM [CustRegistration]"></asp:SqlDataSource>
                                                            </td>
                                                        </tr>


                                                        <tr>

                                                            <td style="width: 168px">
                                                                <label>Number of Payment :</label></td>
                                                            <td>
                                                                <asp:TextBox runat="server" ID="numberpaytxt" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Number Payment Required" ControlToValidate="numberpaytxt"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Date:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="datetxt" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Date  Required" ControlToValidate="datetxt"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Amount Payed:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="paytxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="Amount Payed Required" ControlToValidate="paytxt"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                       
                                                        
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <asp:Button ID="insertbtn" Text="Insert Payment" runat="server" CssClass="btn btn-info" Width="200px" OnClick="insertbtn_Click" />
                                            &nbsp;&nbsp;&nbsp   
                                            <asp:Button ID="cancelbtn" Text="Cancel" runat="server" CssClass="btn btn-danger" Width="200px" CausesValidation="False" OnClick="cancelbtn_Click"/>
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
