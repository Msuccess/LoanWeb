<%@ Page Title="LOAN DETAILS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="loandetails.aspx.cs" Inherits="LoanAppSystem.AdminAccount.loandetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="AdminHome.aspx">HOME</a></li>
                            <li><a href="CustomerDetails.aspx">CUSTOMER DETAILS</a></li>
                            <li><a class="menu-top-active" href="loandetails.aspx">LOAN DETAILS</a></li>
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
            <div class="col-md-3">
                <div class="row">
                    <div class="navbar navbar">
                        <div class="container">
                            <div class="nav-heading">
                                <div class="navbar-brand">MENU LIST</div>
                            </div>
                            <ul class="nav navbar-side">
                                <li class=""><a href="#loandt" data-toggle="tab">Loan Details</a></li>
                                <li class=""><a href="#viewloandt" data-toggle="tab">Add Loan Details</a></li>
                                <li><a href="AdminLogin.aspx"><i class="fa fa-sign-out fa-2x"></i>&nbsp;Log Out</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-9">
                <div class="page-content">
                    <div class="row">
                        <div class="tab-content">
                            <!----\\\\\\\\\\\\\\\\Loan tab\\\\\\\\\\\\\\--->
                            <div class="tab-pane active in" id="loandt">

                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="page-head-line">View Loan Details</h4>

                                        </div>
                                           <asp:Button ID="linkButton" runat="server" CausesValidation="False" Visible="False"></asp:Button>
                                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                                        <br />
                                    </div>

                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                                            <asp:BoundField DataField="Loantype" HeaderText="Loantype" SortExpression="Loantype" />
                                            <asp:BoundField DataField="LoanAmount" HeaderText="LoanAmount" SortExpression="LoanAmount" />
                                            <asp:BoundField DataField="Loantenure" HeaderText="Loantenure" SortExpression="Loantenure" />
                                            <asp:BoundField DataField="InerestType" HeaderText="InerestType" SortExpression="InerestType" />
                                            <asp:BoundField DataField="IssueDate" HeaderText="IssueDate" SortExpression="IssueDate" DataFormatString="{0:MM/dd/yyyy}"/>
                                            <asp:BoundField DataField="Moartgage" HeaderText="Moartgage" SortExpression="Moartgage" />
                                            <asp:BoundField DataField="GuarantorName" HeaderText="GuarantorName" SortExpression="GuarantorName" />
                                            <asp:BoundField DataField="Addressl" HeaderText="Addressl" SortExpression="Addressl" />
                                            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-warning" Text="Update"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-primary" Text="Edit"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-danger" CommandName="Delete" OnClientClick="return Confirm('Are you sure to delete')" Text="Delete"></asp:LinkButton>
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
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LoanApplicationDbConnectionString %>" DeleteCommand="DELETE FROM [LoanDetails] WHERE [CustomerID] = @original_CustomerID AND [Loantype] = @original_Loantype AND [LoanAmount] = @original_LoanAmount AND [Loantenure] = @original_Loantenure AND [InerestType] = @original_InerestType AND [IssueDate] = @original_IssueDate AND [Moartgage] = @original_Moartgage AND [GuarantorName] = @original_GuarantorName AND [Addressl] = @original_Addressl AND [PhoneNumber] = @original_PhoneNumber" InsertCommand="INSERT INTO [LoanDetails] ([CustomerID], [Loantype], [LoanAmount], [Loantenure], [InerestType], [IssueDate], [Moartgage], [GuarantorName], [Addressl], [PhoneNumber]) VALUES (@CustomerID, @Loantype, @LoanAmount, @Loantenure, @InerestType, @IssueDate, @Moartgage, @GuarantorName, @Addressl, @PhoneNumber)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [LoanDetails]" UpdateCommand="UPDATE [LoanDetails] SET [Loantype] = @Loantype, [LoanAmount] = @LoanAmount, [Loantenure] = @Loantenure, [InerestType] = @InerestType, [IssueDate] = @IssueDate, [Moartgage] = @Moartgage, [GuarantorName] = @GuarantorName, [Addressl] = @Addressl, [PhoneNumber] = @PhoneNumber WHERE [CustomerID] = @original_CustomerID AND [Loantype] = @original_Loantype AND [LoanAmount] = @original_LoanAmount AND [Loantenure] = @original_Loantenure AND [InerestType] = @original_InerestType AND [IssueDate] = @original_IssueDate AND [Moartgage] = @original_Moartgage AND [GuarantorName] = @original_GuarantorName AND [Addressl] = @original_Addressl AND [PhoneNumber] = @original_PhoneNumber">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_CustomerID" Type="Int32" />
                                            <asp:Parameter Name="original_Loantype" Type="String" />
                                            <asp:Parameter Name="original_LoanAmount" Type="Decimal" />
                                            <asp:Parameter Name="original_Loantenure" Type="Int32" />
                                            <asp:Parameter Name="original_InerestType" Type="String" />
                                            <asp:Parameter DbType="Date" Name="original_IssueDate" />
                                            <asp:Parameter Name="original_Moartgage" Type="String" />
                                            <asp:Parameter Name="original_GuarantorName" Type="String" />
                                            <asp:Parameter Name="original_Addressl" Type="String" />
                                            <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="CustomerID" Type="Int32" />
                                            <asp:Parameter Name="Loantype" Type="String" />
                                            <asp:Parameter Name="LoanAmount" Type="Decimal" />
                                            <asp:Parameter Name="Loantenure" Type="Int32" />
                                            <asp:Parameter Name="InerestType" Type="String" />
                                            <asp:Parameter DbType="Date" Name="IssueDate" />
                                            <asp:Parameter Name="Moartgage" Type="String" />
                                            <asp:Parameter Name="GuarantorName" Type="String" />
                                            <asp:Parameter Name="Addressl" Type="String" />
                                            <asp:Parameter Name="PhoneNumber" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Loantype" Type="String" />
                                            <asp:Parameter Name="LoanAmount" Type="Decimal" />
                                            <asp:Parameter Name="Loantenure" Type="Int32" />
                                            <asp:Parameter Name="InerestType" Type="String" />
                                            <asp:Parameter DbType="Date" Name="IssueDate" />
                                            <asp:Parameter Name="Moartgage" Type="String" />
                                            <asp:Parameter Name="GuarantorName" Type="String" />
                                            <asp:Parameter Name="Addressl" Type="String" />
                                            <asp:Parameter Name="PhoneNumber" Type="String" />
                                            <asp:Parameter Name="original_CustomerID" Type="Int32" />
                                            <asp:Parameter Name="original_Loantype" Type="String" />
                                            <asp:Parameter Name="original_LoanAmount" Type="Decimal" />
                                            <asp:Parameter Name="original_Loantenure" Type="Int32" />
                                            <asp:Parameter Name="original_InerestType" Type="String" />
                                            <asp:Parameter DbType="Date" Name="original_IssueDate" />
                                            <asp:Parameter Name="original_Moartgage" Type="String" />
                                            <asp:Parameter Name="original_GuarantorName" Type="String" />
                                            <asp:Parameter Name="original_Addressl" Type="String" />
                                            <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>


                            <!-------\\\\\\\\\\\\\\\\\\\\\\\Add Loan Details////////////////////////---->

                            <div class="tab-pane " id="viewloandt">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="page-head-line">Add Loan Details</h4>

                                        </div>

                                    </div>

                                    <div class="panel panel-default">

                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table>
                                                    <tbody>
                                                        <tr>

                                                            <td style="width: 168px">
                                                                <label class="">Customer ID:</label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="customeridtxt" runat="server" CssClass="form-control" Width="400px" DataSourceID="cusSqldata" DataTextField="Customer_ID" DataValueField="Customer_ID">
                                                                    <asp:ListItem Value="-1">select customer id....</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="cusSqldata" runat="server" ConnectionString="<%$ ConnectionStrings:LoanApplicationDbConnectionString %>" SelectCommand="SELECT [Customer ID] AS Customer_ID FROM [CustRegistration]"></asp:SqlDataSource>
                                                                <asp:RequiredFieldValidator ID="usernamevalid" runat="server" ForeColor="Red" ErrorMessage="Customer ID Required" ControlToValidate="customeridtxt" ValidationGroup="loan"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>

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
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Loan type Required" InitialValue="-1" ControlToValidate="loantxt" ValidationGroup="loan"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td style="width: 168px">
                                                                <label>Loan Amount :</label></td>
                                                            <td>
                                                                <asp:TextBox ID="amounttxt" runat="server" CssClass="form-control" Width="400px" TextMode="Number"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ErrorMessage="Amount Required" ControlToValidate="amounttxt" ValidationGroup="loan"></asp:RequiredFieldValidator>
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Loan Tenure:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="tenuretxt" runat="server" CssClass="form-control" Width="400px" TextMode="number" data-toggle="tooltip" data-placement="top" title="Enter month"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Loan tenure Required" ControlToValidate="tenuretxt" ValidationGroup="loan"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Interest Type:</label></td>
                                                            <td>
                                                                <asp:DropDownList ID="loantypetxt" runat="server" CssClass="form-control" Width="400px">
                                                                    <asp:ListItem Value="-1">select loan type...</asp:ListItem>
                                                                    <asp:ListItem>Fixed Loan</asp:ListItem>
                                                                    <asp:ListItem>Float Loan</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="Interest type Required" ControlToValidate="loantypetxt" InitialValue="-1" ValidationGroup="loan"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Issue Date</label></td>
                                                            <td>
                                                                <asp:TextBox ID="datetxt" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Issue Date Required" ControlToValidate="datetxt" ValidationGroup="loan"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Mortgage Details:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="mortgagetxt" runat="server" CssClass="form-control" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="Mortgage Required" ControlToValidate="mortgagetxt" ValidationGroup="loan"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>

                                                                <h3>Guarantor Details:</h3>
                                                                <hr style="width: 214px"/>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            
                                                            <td style="width: 168px">
                                                                <label>Guarantor Name:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="nametxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="Guarantor Name Required" ControlToValidate="nametxt" ValidationGroup="loan"></asp:RequiredFieldValidator>
                                                            </td>
                                                            </tr>
                                                        <tr>
                                                            <td style="width: 168px">
                                                                <label>Address :</label>

                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="addresstxt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" ErrorMessage="Address Required" ControlToValidate="addresstxt" ValidationGroup="loan"></asp:RequiredFieldValidator>
                                                            </td>
                                                            </tr>
                                                            <tr>
                                                            <td style="width: 168px">
                                                                <label>Phone Number:</label></td>
                                                            <td>
                                                                <asp:TextBox ID="phonetxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red" ErrorMessage="Phone Number Required" ControlToValidate="phonetxt" ValidationGroup="loan"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <asp:Button ID="insertButton" Text="Insert Details" runat="server" CssClass="btn btn-info" Width="200px" ValidationGroup="loan" OnClick="insertButton_Click"/>
                                            &nbsp;&nbsp;&nbsp   
                                           <asp:Button ID="cancelbutt" Text="Cancel" runat="server" CssClass="btn btn-danger" Width="200px" CausesValidation="False" ValidationGroup="loan" OnClick="cancelbutt_Click"/>
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
