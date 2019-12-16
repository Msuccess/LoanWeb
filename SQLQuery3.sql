SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adminlogin](
	[Username] [nvarchar](50) NOT NULL,
	[Passwordl] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplyOnline]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplyOnline](
	[CustomerID] [int] IDENTITY(100,1) NOT NULL,
	[Loantype] [nvarchar](50) NOT NULL,
	[LoanAmount] [varchar](50) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[MonthlyIncome] [varchar](50) NOT NULL,
	[Age] [nchar](2) NOT NULL,
	[Gender] [nvarchar](20) NOT NULL,
	[Addressloc] [nvarchar](50) NOT NULL,
	[WorkPhone] [nchar](20) NOT NULL,
	[PhoneNumber] [nchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerDetails]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDetails](
	[CustomerID] [int] IDENTITY(100,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](20) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Addressl] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DateOBirth] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustRegistration]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustRegistration](
	[Customer ID] [int] IDENTITY(100,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CustRegistration] PRIMARY KEY CLUSTERED 
(
	[Customer ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fixedInterestRate]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fixedInterestRate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Loantype] [nvarchar](20) NOT NULL,
	[Duration] [int] NOT NULL,
	[Rate] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[floatInterestRate]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[floatInterestRate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Loantype] [nvarchar](20) NOT NULL,
	[Duration] [int] NOT NULL,
	[Rate] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InsertAmount]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsertAmount](
	[CustomerID] [int] NOT NULL,
	[EMIAmount] [decimal](18, 2) NOT NULL,
	[InterestAmount] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoanDetails]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanDetails](
	[CustomerID] [int] NOT NULL,
	[Loantype] [nvarchar](50) NOT NULL,
	[LoanAmount] [decimal](18, 2) NOT NULL,
	[Loantenure] [int] NOT NULL,
	[InerestType] [nvarchar](50) NOT NULL,
	[IssueDate] [date] NOT NULL,
	[Moartgage] [nvarchar](max) NOT NULL,
	[GuarantorName] [nvarchar](50) NOT NULL,
	[Addressl] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_LoanDetails] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentReceived]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentReceived](
	[CustomerID] [int] NOT NULL,
	[numberOfpayment] [int] NOT NULL,
	[DatePayed] [date] NOT NULL,
	[AmountPayed] [decimal](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[CheckUser]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[CheckUser]
 @CustomerID int


 As
  Declare @count int
 Declare @recount int

Select @count=Count([CustomerID])from [dbo].[LoanDetails] where [CustomerID]=@CustomerID
if(@count>0)
begin
set @recount=1
end
Else
begin
set @recount=-1
End
 Begin
 select @recount As ReturnValue
 end

GO
/****** Object:  StoredProcedure [dbo].[getDetails]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getDetails]
@CustomerID nvarchar(50)
As
Begin
select * from [dbo].[CustomerDetails] where @CustomerID=CustomerID
End
GO
/****** Object:  StoredProcedure [dbo].[getEMIAmount]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[getEMIAmount]
@CustomerID nvarchar(50)
As
Begin
select * from [dbo].[InsertAmount] where @CustomerID=CustomerID
End
GO
/****** Object:  StoredProcedure [dbo].[getLoanDetails]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getLoanDetails]
@CustomerID nvarchar(50)
As
Begin
select * from [dbo].[LoanDetails] where @CustomerID=CustomerID
End
GO
/****** Object:  StoredProcedure [dbo].[getPayments]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getPayments]
@Customer nvarchar(50)
As
Begin
select * from [dbo].[PaymentReceived] where @Customer=CustomerID
End
GO
/****** Object:  StoredProcedure [dbo].[spAdminlogin]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spAdminlogin]
 @UserName nvarchar(50),
 @Password nvarchar(50)

 As
  Declare @count int
 Declare @recount int

Select @count=Count([UserName])from [dbo].[Adminlogin] where [UserName]=@UserName and [Passwordl]=@Password
if(@count>0)
begin
set @recount=1
end
Else
begin
set @recount=-1
End
 Begin
 select @recount As ReturnValue
 end
GO
/****** Object:  StoredProcedure [dbo].[spChangeAdminPassword]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spChangeAdminPassword]
 @UserName   NVARCHAR (50),
 @Password   NVARCHAR (50),
 @NewPassword Nvarchar(50)
 as 
 Declare @count int
 Declare @recount int

Select @count=Count([UserName])from [dbo].[Adminlogin]where [UserName]=@UserName and [Passwordl]=@Password
if(@count>0)
begin
set @recount=1
Update [dbo].[Adminlogin] set  [Passwordl]=@NewPassword where [UserName]=@UserName
end
Else
begin
set @recount=-1
End
 Begin
 select @recount As ReturnValue
 end
GO
/****** Object:  StoredProcedure [dbo].[spChangePassword]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spChangePassword]
 @UserName   NVARCHAR (50),
 @Password   NVARCHAR (50),
 @NewPassword Nvarchar(50)
 as 
 Declare @count int
 Declare @recount int

Select @count=Count([UserName])from [dbo].[CustRegistration]where [UserName]=@UserName and [Password]=@Password
if(@count>0)
begin
set @recount=1
Update [dbo].[CustRegistration] set  [Password]=@NewPassword where [UserName]=@UserName
end
Else
begin
set @recount=-1
End
 Begin
 select @recount As ReturnValue
 end
GO
/****** Object:  StoredProcedure [dbo].[spInsertCustomer]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertCustomer] 
	
  @fullname    NVARCHAR (50) ,
   @UserName   NVARCHAR (50),
    @Password   NVARCHAR (50),
     @PhoneNumber VARCHAR (20)  ,
      @Email      NVARCHAR (50),
	  @CustomerID int Out   
AS
begin
	Declare @recount  int
	Declare @count  int

	select @count=Count([UserName]) from [dbo].[CustRegistration] where @UserName=UserName
	if(@count>0)
	BEGIN
  set @recount=1;
   End
   Else 
   begin 
   set @recount=-1
   insert into [dbo].[CustRegistration] Values(@fullname,@UserName,@Password,@PhoneNumber,@Email)
   select   @CustomerID = SCOPE_IDENTITY();
   end
   select @recount as ReturnValue
END

GO
/****** Object:  StoredProcedure [dbo].[spInsertCustomerDetails]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spInsertCustomerDetails] 
	
  @CustomerName   NVARCHAR (50) ,
   @Gender   NVARCHAR (50),
    @City   NVARCHAR (50),
	@Address nvarchar(50),
     @PhoneNumber VARCHAR (20)  ,
      @Email      NVARCHAR (50),
	  @DateOfbrith Date
AS
begin
	
   insert into [dbo].[CustomerDetails] Values(@CustomerName,@Gender,@Address,@City,@PhoneNumber,@Email,@DateOfbrith)

END
GO
/****** Object:  StoredProcedure [dbo].[spInsertEMICalculator]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[spInsertEMICalculator]
 @CustomerID int ,
 @LendAmount decimal(18,0),
 @InerestAmount decimal(18,0),
 @Total decimal(18,0)

 
 As
 Begin
 insert into [dbo].[InsertAmount] Values( @CustomerID,@LendAmount,@InerestAmount,@Total)
 End
GO
/****** Object:  StoredProcedure [dbo].[spInsertFixedInterest]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create procedure [dbo].[spInsertFixedInterest]
 @Loantype nvarchar(20),
 @Duration int,
 @Rate int 
 
 As
 Begin
 insert into [dbo].[fixedInterestRate] Values(@Loantype,@Duration,@rate)
 End
GO
/****** Object:  StoredProcedure [dbo].[spInsertFloatInterest]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInsertFloatInterest]
 @Loantype nvarchar(20),
 @Duration int,
 @Rate int 
 
 As
 Begin
 insert into [dbo].[floatInterestRate] Values(@Loantype,@Duration,@rate)
 End
GO
/****** Object:  StoredProcedure [dbo].[spInsertLoanDetails]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertLoanDetails]
@CustomerID int,
@loantype nvarchar(50),
@LoanAmount decimal(18,0),
@Loantenure int ,
@InterestRate nvarchar(20),
@IssueDate Date,
@Moartgage nvarchar(max),
@GuarantorName nvarchar(50),
@Address nvarchar(50),
@ContactNo varchar(20)
AS
BEGIN
	Insert into [dbo].[LoanDetails] Values(@CustomerID,@loantype,@LoanAmount,@Loantenure,@InterestRate,@IssueDate,@Moartgage,@GuarantorName,@Address,@ContactNo)
END

GO
/****** Object:  StoredProcedure [dbo].[spInsertOlineApply]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spInsertOlineApply]         
@Loantype NVARCHAR (50),
@Loanamount decimal(18,0),        
@CustomerName NVARCHAR (50),
@MonthlyIncome decimal(18,0),         
@Age numeric(18,0) ,         
@Gender NVARCHAR (20),
@Address NVARCHAR (50),
@WorkPhone nCHAR (20), 
@Phone nchar (20) ,
@Email NVARCHAR (50)

As
Begin

insert into [dbo].[ApplyOnline]Values(@Loantype,@Loantype,@CustomerName,@MonthlyIncome,@Age,@Gender,@Address,@WorkPhone,@Phone,@Email)
End
GO
/****** Object:  StoredProcedure [dbo].[spInsertPayment]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spInsertPayment]
 @CustomerID int,
 @numberOFPayment int,
 @DatePayed Date,
 @AmountPayed decimal(18,0)
 As
 Begin
 insert into [dbo].[PaymentReceived] Values(@CustomerID,@numberOFPayment,@DatePayed,@AmountPayed)
 End
GO
/****** Object:  StoredProcedure [dbo].[spLoginCustomer]    Script Date: 5/17/2016 12:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spLoginCustomer]
 @UserName nvarchar(50),
 @Password nvarchar(50),
 @CustomerID int
 As
  Declare @count int
 Declare @recount int

Select @count=Count([UserName])from [dbo].[CustRegistration]where [UserName]=@UserName and [Password]=@Password and @CustomerID=[Customer ID]
if(@count>0)
begin
set @recount=1
end
Else
begin
set @recount=-1
End
 Begin
 select @recount As ReturnValue
 end
