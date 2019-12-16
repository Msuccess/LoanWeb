<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LoanAppSystem.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">HOME</a></li>
                            <li><a href="ClientAccount/ApplyOnline.aspx">APPLY ONLINE</a></li>
                            <li><a href="ClientAccount/Download.aspx">DOWNLOAD FORMS</a></li>
                            <li><a href="About.aspx">ABOUT US</a></li>
                            <li><a class="menu-top-active"  href="Contact.aspx">CONTACT US</a></li>


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
                    <h4 class="page-head-line"> CONTACT DETAILS</h4>

                </div>

            </div>
            <div class="col-md-offset-3">
                <div class="panel panel-default">


                   



                    <div class="panel-body">
                        <h2>Portal Address:</h2>
                        
                        <address>
                          <p>
                            Adehyeman Savings and Loans Company Ltd.</p> 
                        </address>

                        <address>
                            <strong>Mobile No:</strong>   <a href="mailto:Support@example.com">0540771351</a><br />
                            <strong>Web:</strong> <a href="mailto:Marketing@example.com">hpp//www.adehyemanloan.com</a>
                        </address>

                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
