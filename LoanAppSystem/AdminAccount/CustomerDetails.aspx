<%@ Page Title="CUSTOMER DETAILS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="LoanAppSystem.ClientAccount.CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="AdminHome.aspx">HOME</a></li>
                            <li><a class="menu-top-active" href="CustomerDetails.aspx">CUSTOMER DETAILS</a></li>
                            <li><a href="loandetails.aspx">LOAN DETAILS</a></li>
                            <li><a href="EniCalculator.aspx">ENI CALCULATOR</a></li>
                            <li><a href="Receivepayment.aspx">RECEIVE PAYMENT</a></li>
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
                <div class="container">
                    <div class="navbar navbar">
                        <div class="container">
                            <div class="nav-heading">
                                <div class="navbar-brand">MENU LIST</div>
                            </div>
                            <ul class="nav navbar-side">
                                <li class=""><a href="#view" data-toggle="tab">Customer Details</a></li>
                                <li class=""><a href="#add" data-toggle="tab">Add Customer </a></li>
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
                                    <h4 class="page-head-line">CUSTOMER DETAILS</h4>
                                </div>
                                <div class="row">
                              <asp:Button ID="linkButton" runat="server" CausesValidation="False" Visible="False"></asp:Button>
                                    </div>

                                   <div class="row">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                                     BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CustomerID"
                                    CssClass="table table-condensed" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                                        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                        <asp:BoundField DataField="Addressl" HeaderText="Address" SortExpression="Addressl" />
                                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="DateOBirth"  HeaderText="DateOBirth" SortExpression="DateOBirth" DataFormatString="{0:MM/dd/yyyy}" />
                                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CssClass="btn btn-primary" CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-danger" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CssClass="btn btn-primary" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server"  CausesValidation="False" CssClass="btn btn-danger" CommandName="Delete"  OnClientClick="return Confirm('Are You Sure To Delect');" Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LoanApplicationDbConnectionString %>" DeleteCommand="DELETE FROM [CustomerDetails] WHERE [CustomerID] = @original_CustomerID AND [CustomerName] = @original_CustomerName AND [Gender] = @original_Gender AND [City] = @original_City AND [Addressl] = @original_Addressl AND [PhoneNumber] = @original_PhoneNumber AND [Email] = @original_Email AND [DateOBirth] = @original_DateOBirth" InsertCommand="INSERT INTO [CustomerDetails] ([CustomerName], [Gender], [City], [Addressl], [PhoneNumber], [Email], [DateOBirth]) VALUES (@CustomerName, @Gender, @City, @Addressl, @PhoneNumber, @Email, @DateOBirth)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CustomerDetails]" UpdateCommand="UPDATE [CustomerDetails] SET [CustomerName] = @CustomerName, [Gender] = @Gender, [City] = @City, [Addressl] = @Addressl, [PhoneNumber] = @PhoneNumber, [Email] = @Email, [DateOBirth] = @DateOBirth WHERE [CustomerID] = @original_CustomerID AND [CustomerName] = @original_CustomerName AND [Gender] = @original_Gender AND [City] = @original_City AND [Addressl] = @original_Addressl AND [PhoneNumber] = @original_PhoneNumber AND [Email] = @original_Email AND [DateOBirth] = @original_DateOBirth">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                                        <asp:Parameter Name="original_CustomerName" Type="String" />
                                        <asp:Parameter Name="original_Gender" Type="String" />
                                        <asp:Parameter Name="original_City" Type="String" />
                                        <asp:Parameter Name="original_Addressl" Type="String" />
                                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                        <asp:Parameter Name="original_Email" Type="String" />
                                        <asp:Parameter DbType="Date" Name="original_DateOBirth" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="CustomerName" Type="String" />
                                        <asp:Parameter Name="Gender" Type="String" />
                                        <asp:Parameter Name="City" Type="String" />
                                        <asp:Parameter Name="Addressl" Type="String" />
                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter DbType="Date" Name="DateOBirth" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="CustomerName" Type="String" />
                                        <asp:Parameter Name="Gender" Type="String" />
                                        <asp:Parameter Name="City" Type="String" />
                                        <asp:Parameter Name="Addressl" Type="String" />
                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter DbType="Date" Name="DateOBirth" />
                                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                                        <asp:Parameter Name="original_CustomerName" Type="String" />
                                        <asp:Parameter Name="original_Gender" Type="String" />
                                        <asp:Parameter Name="original_City" Type="String" />
                                        <asp:Parameter Name="original_Addressl" Type="String" />
                                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                        <asp:Parameter Name="original_Email" Type="String" />
                                        <asp:Parameter DbType="Date" Name="original_DateOBirth" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                       </div>
                            </div>

                            <!----\\\\\\\\\\\\\\\\ADD tab\\\\\\\\\\\\\\--->
                            <div class="tab-pane " id="add">
                                <div class="container">
                                    <div class="col-md-12">
                                        <h4 class="page-head-line">CUSTOMER DETAILS</h4>
                                    </div>

                                    <div class="panel panel-default">

                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table>
                                                    <tbody>
                                                        <tr>

                                                            <td style="width: 168px">
                                                                <label class="">Customer Name :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="nametxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="usernamevalid" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="nametxt" ValidationGroup="add"></asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="RegularExpre" runat="server" ErrorMessage="Enter A Valid Name" ControlToValidate="nametxt" Font-Bold="True" ForeColor="Red"  ValidationExpression="^[a-zA-Z_\s]*$" ValidationGroup="add"></asp:RegularExpressionValidator>
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
                                                                <label>City:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="citytxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="City Required" ControlToValidate="citytxt" ValidationGroup="add"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Address:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="addreestxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="Address Required" ControlToValidate="addreestxt" ValidationGroup="add"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Phone Number:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="phonetxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Phone Number Required" ControlToValidate="phonetxt" ValidationGroup="add"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Email Address:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="emailtxt" runat="server" CssClass="form-control" TextMode="Email" Width="400px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="City Required" ControlToValidate="citytxt" ValidationGroup="add"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Data of Birth:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="dbtxt" runat="server" CssClass="form-control" Width="400px" TextMode="Date"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="Date of birth Required" ControlToValidate="dbtxt" ValidationGroup="add"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <asp:Button ID="insertbtn" Text="Insert Customer" runat="server" CssClass="btn btn-info" Width="200px" OnClick="insertbtn_Click" />
                                            &nbsp;&nbsp;&nbsp
                        <asp:Button ID="cancelbtn" Text="Cancel" runat="server" CssClass="btn btn-danger" Width="200px" CausesValidation="False" OnClick="cancelbtn_Click" />
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