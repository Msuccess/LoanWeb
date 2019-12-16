<%@ Page Title="Downloads" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="LoanAppSystem.ClientAccount.CustomerRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                              <li><a href="../Default.aspx">HOME</a></li>
                            <li><a  href="ApplyOnline.aspx">APPLY ONLINE</a></li>
                            <li><a class="menu-top-active" href="Download.aspx">DOWNLOAD FORMS</a></li>
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
                    <h4 class="page-head-line">Downloads</h4>

                </div>

            </div>
            <div class="col-md-offset-3">
                <div class="panel panel-default">

                    <div class="panel-body">
                        Click to Here To Download Application forms
                        <h2><a class="label label-warning" href="Applicationform.docx">Application Forms</a></h2>

                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
