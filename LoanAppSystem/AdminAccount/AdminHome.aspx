<%@ Page Title="HOME" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="LoanAppSystem.AdminAccount.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a class="menu-top-active" href="AdminHome.aspx">HOME</a></li>
                            <li><a href="CustomerDetails.aspx">CUSTOMER DETAILS</a></li>
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
                                <li class=""><a href="#loanapply" data-toggle="tab">Customer Application</a></li>
                                <li class=""><a href="#loanrate" data-toggle="tab">Loan Rate</a></li>
                                <li class=""><a href="#viewloanrate" data-toggle="tab">View Loan Rate</a></li>
                                <li><a href="AdminLogin.aspx"><i class="fa fa-sign-out fa-2x"></i>&nbsp;Log Out</a></li>

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
                                               <asp:Button ID="linkButton" runat="server" CausesValidation="False" Visible="False"></asp:Button>
                                        </div>

                                    </div>
                                    <div class="col-md-offset-6">
                                        <asp:Label ID="Label1" runat="server" Width="500px"></asp:Label>
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
                            <div class="tab-pane fade " id="changepass">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="page-head-line">Change Password</h4>

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
                                                                <asp:TextBox ID="usertxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="usernamevalid" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="usertxt" ValidationGroup="change"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>


                                                        <tr>

                                                            <td style="width: 168px">
                                                                <label>Old Password :</label></td>
                                                            <td>
                                                                <asp:TextBox ID="oldpasstxt" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="newpasstxt" ValidationGroup="change"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>New Password :</label></td>
                                                            <td>
                                                                <asp:TextBox ID="newpasstxt" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="oldpasstxt" ValidationGroup="change"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <asp:Button ID="setbutt" Text="Update Password" runat="server" CssClass="btn btn-info" Width="200px" ValidationGroup="change" OnClick="setbutt_Click" />
                                        </div>
                                    </div>



                                </div>
                            </div>
                            <!-----\\\\\\\\\\\\\\\\\\\\\\Customer Loan Application\\\\\\\\\\--->
                            <div class="tab-pane fade  " id="loanapply">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h4 class="page-head-line">Customer Application</h4>

                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-body">
                                                    <asp:GridView ID="LoanGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="table table-condensed" DataKeyNames="CustomerID" DataSourceID="LoanApplication" OnRowDeleted="LoanGridView_RowDeleted">
                                                        <Columns>
                                                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                                                            <asp:BoundField DataField="Loantype" HeaderText="Loantype" SortExpression="Loantype" />
                                                            <asp:BoundField DataField="LoanAmount" HeaderText="LoanAmount" SortExpression="LoanAmount" />
                                                            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                                                            <asp:BoundField DataField="MonthlyIncome" HeaderText="MonthlyIncome" SortExpression="MonthlyIncome" />
                                                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                                            <asp:BoundField DataField="Addressloc" HeaderText="Addressloc" SortExpression="Addressloc" />
                                                            <asp:BoundField DataField="WorkPhone" HeaderText="WorkPhone" SortExpression="WorkPhone" />
                                                            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                                <EditItemTemplate>
                                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-primary" Text="Update"></asp:LinkButton>
                                                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="Cancel"></asp:LinkButton>
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-primary" Text="Edit"></asp:LinkButton>
                                                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return Confirm('Are You Sure To Delete');" CssClass="btn btn-danger" Text="Delete"></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
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
                                                    <asp:SqlDataSource ID="LoanApplication" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LoanApplicationDbConnectionString %>" DeleteCommand="DELETE FROM [ApplyOnline] WHERE [CustomerID] = @original_CustomerID AND [Loantype] = @original_Loantype AND [LoanAmount] = @original_LoanAmount AND [CustomerName] = @original_CustomerName AND [MonthlyIncome] = @original_MonthlyIncome AND [Age] = @original_Age AND [Gender] = @original_Gender AND [Addressloc] = @original_Addressloc AND [WorkPhone] = @original_WorkPhone AND [PhoneNumber] = @original_PhoneNumber AND [Email] = @original_Email" InsertCommand="INSERT INTO [ApplyOnline] ([Loantype], [LoanAmount], [CustomerName], [MonthlyIncome], [Age], [Gender], [Addressloc], [WorkPhone], [PhoneNumber], [Email]) VALUES (@Loantype, @LoanAmount, @CustomerName, @MonthlyIncome, @Age, @Gender, @Addressloc, @WorkPhone, @PhoneNumber, @Email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ApplyOnline]" UpdateCommand="UPDATE [ApplyOnline] SET [Loantype] = @Loantype, [LoanAmount] = @LoanAmount, [CustomerName] = @CustomerName, [MonthlyIncome] = @MonthlyIncome, [Age] = @Age, [Gender] = @Gender, [Addressloc] = @Addressloc, [WorkPhone] = @WorkPhone, [PhoneNumber] = @PhoneNumber, [Email] = @Email WHERE [CustomerID] = @original_CustomerID AND [Loantype] = @original_Loantype AND [LoanAmount] = @original_LoanAmount AND [CustomerName] = @original_CustomerName AND [MonthlyIncome] = @original_MonthlyIncome AND [Age] = @original_Age AND [Gender] = @original_Gender AND [Addressloc] = @original_Addressloc AND [WorkPhone] = @original_WorkPhone AND [PhoneNumber] = @original_PhoneNumber AND [Email] = @original_Email">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="original_CustomerID" Type="Int32" />
                                                            <asp:Parameter Name="original_Loantype" Type="String" />
                                                            <asp:Parameter Name="original_LoanAmount" Type="Decimal" />
                                                            <asp:Parameter Name="original_CustomerName" Type="String" />
                                                            <asp:Parameter Name="original_MonthlyIncome" Type="Decimal" />
                                                            <asp:Parameter Name="original_Age" Type="Decimal" />
                                                            <asp:Parameter Name="original_Gender" Type="String" />
                                                            <asp:Parameter Name="original_Addressloc" Type="String" />
                                                            <asp:Parameter Name="original_WorkPhone" Type="String" />
                                                            <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                                            <asp:Parameter Name="original_Email" Type="String" />
                                                        </DeleteParameters>
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Loantype" Type="String" />
                                                            <asp:Parameter Name="LoanAmount" Type="Decimal" />
                                                            <asp:Parameter Name="CustomerName" Type="String" />
                                                            <asp:Parameter Name="MonthlyIncome" Type="Decimal" />
                                                            <asp:Parameter Name="Age" Type="Decimal" />
                                                            <asp:Parameter Name="Gender" Type="String" />
                                                            <asp:Parameter Name="Addressloc" Type="String" />
                                                            <asp:Parameter Name="WorkPhone" Type="String" />
                                                            <asp:Parameter Name="PhoneNumber" Type="String" />
                                                            <asp:Parameter Name="Email" Type="String" />
                                                        </InsertParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Loantype" Type="String" />
                                                            <asp:Parameter Name="LoanAmount" Type="Decimal" />
                                                            <asp:Parameter Name="CustomerName" Type="String" />
                                                            <asp:Parameter Name="MonthlyIncome" Type="Decimal" />
                                                            <asp:Parameter Name="Age" Type="Decimal" />
                                                            <asp:Parameter Name="Gender" Type="String" />
                                                            <asp:Parameter Name="Addressloc" Type="String" />
                                                            <asp:Parameter Name="WorkPhone" Type="String" />
                                                            <asp:Parameter Name="PhoneNumber" Type="String" />
                                                            <asp:Parameter Name="Email" Type="String" />
                                                            <asp:Parameter Name="original_CustomerID" Type="Int32" />
                                                            <asp:Parameter Name="original_Loantype" Type="String" />
                                                            <asp:Parameter Name="original_LoanAmount" Type="Decimal" />
                                                            <asp:Parameter Name="original_CustomerName" Type="String" />
                                                            <asp:Parameter Name="original_MonthlyIncome" Type="Decimal" />
                                                            <asp:Parameter Name="original_Age" Type="Decimal" />
                                                            <asp:Parameter Name="original_Gender" Type="String" />
                                                            <asp:Parameter Name="original_Addressloc" Type="String" />
                                                            <asp:Parameter Name="original_WorkPhone" Type="String" />
                                                            <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                                            <asp:Parameter Name="original_Email" Type="String" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-----\\\\\\\\\\\\\\\\\\\Loan Intrest rate\\\\\\\\\\\\\\\\\\\\--->
                            <div class="tab-pane fade" id="loanrate">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4 class="page-head-line">Interest Rates</h4>

                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4>Float Interest Rate</h4>
                                    </div>
                                    <div class="panel-body">

                                        <div class="table-responsive">
                                            <table>

                                                <tbody>
                                                    <tr>

                                                        <td style="width: 168px">
                                                            <label>Loan Type:</label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList runat="server" ID="loantxt" CssClass="form-control" Width="400px">
                                                                <asp:ListItem Value="-1">select loan type</asp:ListItem>
                                                                <asp:ListItem>Home Loan</asp:ListItem>
                                                                <asp:ListItem>Vechile Loan</asp:ListItem>
                                                                <asp:ListItem>Gold Loan</asp:ListItem>
                                                                <asp:ListItem>Personal Loan</asp:ListItem>

                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="Loan type Required" InitialValue="-1" ControlToValidate="loantxt" ValidationGroup="float"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>


                                                    <tr>

                                                        <td style="width: 168px">
                                                            <label>Duration :</label></td>
                                                        <td>
                                                            <asp:TextBox ID="durationtxt" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Duration Required" ControlToValidate="durationtxt" ValidationGroup="float"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 168px">
                                                            <label>Rate(%) :</label></td>
                                                        <td>
                                                            <asp:TextBox ID="ratetxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="ratetxt" ValidationGroup="float"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>

                                    <div class="panel-footer">
                                        <asp:Button ID="insertflbtn" Text="Insert Float Rate" runat="server" CssClass="btn btn-info" Width="200px" ValidationGroup="float" OnClick="insertflbtn_Click" />
                                        &nbsp;&nbsp; 
                                        <asp:Button ID="cancelbtn" Text="Cancel" runat="server" CssClass="btn btn-danger" Width="200px" CausesValidation="False" ValidationGroup="float" OnClick="cancelbtn_Click" />
                                    </div>


                                </div>
                                <br />
                                <br />
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4>Fixed Insert Rate</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table>

                                                <tbody>
                                                    <tr>

                                                        <td style="width: 168px">
                                                            <label>Loan Type:</label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList runat="server" ID="fixloantypetxt" CssClass="form-control" Width="400px">
                                                                <asp:ListItem Value="-1">select loan type</asp:ListItem>
                                                                <asp:ListItem>Home Loan</asp:ListItem>
                                                                <asp:ListItem>Vechile Loan</asp:ListItem>
                                                                <asp:ListItem>Gold Loan</asp:ListItem>
                                                                <asp:ListItem>Personal Loan</asp:ListItem>

                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="Loan type Required" InitialValue="-1" ControlToValidate="fixloantypetxt" ValidationGroup="fixed"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>


                                                    <tr>

                                                        <td style="width: 168px">
                                                            <label>Duration :</label></td>
                                                        <td>
                                                            <asp:TextBox ID="fixdurationtxt" runat="server" CssClass="form-control" data-toggle="tooltip" data-placement="top" title="Default is 1 to 5 years"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ErrorMessage="Duration Required" ControlToValidate="fixdurationtxt" ValidationGroup="fixed"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 168px">
                                                            <label>Rate(%) :</label></td>
                                                        <td>
                                                            <asp:TextBox ID="fixratetxt" runat="server" CssClass="form-control" TextMode="Number" data-toggle="tooltip" data-placement="top" title="Default is 18%"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" ErrorMessage="UserName Required" ControlToValidate="fixratetxt" ValidationGroup="fixed"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>

                                    <div class="panel-footer">
                                        <asp:Button ID="fixedbtn" Text="Insert Fixed Rate" runat="server" CssClass="btn btn-info" Width="200px" ValidationGroup="fixed" OnClick="fixedbtn_Click" />
                                        &nbsp;&nbsp; 
                                        <asp:Button ID="cancelfixbtn" Text="Cancel" runat="server" CssClass="btn btn-danger" Width="200px" CausesValidation="False" ValidationGroup="fixed" OnClick="cancelfixbtn_Click" />
                                    </div>
                                </div>

                            </div>
                            <!-----\\\\\\\\\\\\\\\\\\\\\\\\\\\\VIEW LOAN TYPES\\\\\\\\\\\\\\\\\\-->
                            <div class="tab-pane fade  " id="viewloanrate">
                                <div class="container">

                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="page-head-line">View Interest Rates</h4>

                                        </div>
                                    </div>
                                    <div class="panel-heading">
                                        <h4>Fixed Insert Rate</h4>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-body">

                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowSorting="True" CssClass="table table-condensed" OnRowDeleted="GridView1_RowDeleted">
                                                <Columns>
                                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                                    <asp:BoundField DataField="Loantype" HeaderText="Loantype" SortExpression="Loantype" />
                                                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                                                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                                                    <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                        <EditItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary"></asp:LinkButton>
                                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-primary"></asp:LinkButton>
                                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('Are You Sure To Delete');" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" ></asp:LinkButton>
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
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LoanApplicationDbConnectionString %>" DeleteCommand="DELETE FROM [fixedInterestRate] WHERE [id] = @original_id AND [Loantype] = @original_Loantype AND [Duration] = @original_Duration AND [Rate] = @original_Rate" InsertCommand="INSERT INTO [fixedInterestRate] ([Loantype], [Duration], [Rate]) VALUES (@Loantype, @Duration, @Rate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [fixedInterestRate]" UpdateCommand="UPDATE [fixedInterestRate] SET [Loantype] = @Loantype, [Duration] = @Duration, [Rate] = @Rate WHERE [id] = @original_id AND [Loantype] = @original_Loantype AND [Duration] = @original_Duration AND [Rate] = @original_Rate">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_id" Type="Int32" />
                                                    <asp:Parameter Name="original_Loantype" Type="String" />
                                                    <asp:Parameter Name="original_Duration" Type="Int32" />
                                                    <asp:Parameter Name="original_Rate" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="Loantype" Type="String" />
                                                    <asp:Parameter Name="Duration" Type="Int32" />
                                                    <asp:Parameter Name="Rate" Type="Int32" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="Loantype" Type="String" />
                                                    <asp:Parameter Name="Duration" Type="Int32" />
                                                    <asp:Parameter Name="Rate" Type="Int32" />
                                                    <asp:Parameter Name="original_id" Type="Int32" />
                                                    <asp:Parameter Name="original_Loantype" Type="String" />
                                                    <asp:Parameter Name="original_Duration" Type="Int32" />
                                                    <asp:Parameter Name="original_Rate" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>

                                        </div>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="panel-heading">
                                        <h4>Float Interest Rate</h4>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-body">

                                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" CssClass="table table-condensed" OnRowDeleted="GridView2_RowDeleted">
                                                <Columns>
                                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                    <asp:BoundField DataField="Loantype" HeaderText="Loantype" SortExpression="Loantype" />
                                                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                                                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                                                    <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                        <EditItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary"></asp:LinkButton>
                                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger"></asp:LinkButton>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-primary"></asp:LinkButton>
                                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are You Sure To Delete');" CssClass="btn btn-danger"></asp:LinkButton>
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
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LoanApplicationDbConnectionString %>" DeleteCommand="DELETE FROM [floatInterestRate] WHERE [Id] = @original_Id AND [Loantype] = @original_Loantype AND [Duration] = @original_Duration AND [Rate] = @original_Rate" InsertCommand="INSERT INTO [floatInterestRate] ([Loantype], [Duration], [Rate]) VALUES (@Loantype, @Duration, @Rate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [floatInterestRate]" UpdateCommand="UPDATE [floatInterestRate] SET [Loantype] = @Loantype, [Duration] = @Duration, [Rate] = @Rate WHERE [Id] = @original_Id AND [Loantype] = @original_Loantype AND [Duration] = @original_Duration AND [Rate] = @original_Rate">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_Id" Type="Int32" />
                                                    <asp:Parameter Name="original_Loantype" Type="String" />
                                                    <asp:Parameter Name="original_Duration" Type="Int32" />
                                                    <asp:Parameter Name="original_Rate" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="Loantype" Type="String" />
                                                    <asp:Parameter Name="Duration" Type="Int32" />
                                                    <asp:Parameter Name="Rate" Type="Int32" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="Loantype" Type="String" />
                                                    <asp:Parameter Name="Duration" Type="Int32" />
                                                    <asp:Parameter Name="Rate" Type="Int32" />
                                                    <asp:Parameter Name="original_Id" Type="Int32" />
                                                    <asp:Parameter Name="original_Loantype" Type="String" />
                                                    <asp:Parameter Name="original_Duration" Type="Int32" />
                                                    <asp:Parameter Name="original_Rate" Type="Int32" />
                                                </UpdateParameters>
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
    </div>
</asp:Content>
