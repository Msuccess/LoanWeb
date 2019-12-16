<%@ Page Title="ENI DETAILS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EMIDetails.aspx.cs" Inherits="LoanAppSystem.ClientAccount.EMIDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="CustomerHome.aspx">HOME</a></li>
                            <li><a  href="CustomerLoanDetails.aspx">CUSTOMER DETAILS</a></li>
                            <li><a href="LoanDetails.aspx">LOAN DETAILS</a></li>
                            <li><a class="menu-top-active" href="EMIDetails.aspx">ENI DETAILS</a></li>
                            <li><a href="Payments.aspx">PAYMENT DETAILS</a></li>



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
                    <h4 class="page-head-line">EMI Details</h4>

                </div>

            </div>
            <div class="col-md-offset-3">
                <div class="panel panel-default">

                    <div class="panel-body">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" CssClass="tabel tabel-condensed" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>