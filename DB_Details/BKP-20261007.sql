USE [SAPDB]
GO
/****** Object:  Table [dbo].[ARCreditMemo]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCreditMemo](
	[DocEntry] [int] NOT NULL,
	[DocNum] [int] NULL,
	[DocType] [nvarchar](20) NULL,
	[CANCELED] [char](1) NULL,
	[DocStatus] [char](1) NULL,
	[ObjType] [nvarchar](20) NULL,
	[DocDate] [date] NULL,
	[DocDueDate] [date] NULL,
	[CardCode] [nvarchar](50) NULL,
	[CarsName] [nvarchar](200) NULL,
	[NumAtCard] [nvarchar](100) NULL,
	[Address] [nvarchar](500) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFC] [decimal](19, 6) NULL,
	[DiscSum] [decimal](19, 6) NULL,
	[DiscSumFC] [decimal](19, 6) NULL,
	[DocCur] [nvarchar](10) NULL,
	[DocRate] [decimal](19, 6) NULL,
	[DocTotal] [decimal](19, 6) NULL,
	[DocTotalFC] [decimal](19, 6) NULL,
	[GrosProfit] [decimal](19, 6) NULL,
	[GrosProfFC] [decimal](19, 6) NULL,
	[Comments] [nvarchar](1000) NULL,
	[SlpCode] [int] NULL,
	[TaxDate] [date] NULL,
	[UserSign] [int] NULL,
	[TotalExpns] [decimal](19, 6) NULL,
	[Project] [nvarchar](50) NULL,
	[PayToCode] [nvarchar](100) NULL,
	[VZ_BL] [nvarchar](100) NULL,
	[VZ_PurTerm] [nvarchar](100) NULL,
	[VZ_DelTerm] [nvarchar](100) NULL,
	[VZ_PayTerm] [nvarchar](100) NULL,
	[VZ_SPL_TERM] [nvarchar](100) NULL,
	[GroupNum] [int] NULL,
	[TrnspCode] [int] NULL,
	[OrgAmount] [decimal](19, 6) NULL,
	[OrgAmountFC] [decimal](19, 6) NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_ARCreditMemo] PRIMARY KEY CLUSTERED 
(
	[DocEntry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARCreditMemo_Batch]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCreditMemo_Batch](
	[BatchNum] [nvarchar](100) NULL,
	[ExpDate] [date] NULL,
	[PrdDate] [date] NULL,
	[InDate] [date] NULL,
	[SuppSerial] [nvarchar](100) NULL,
	[IntrSerial] [nvarchar](100) NULL,
	[Notes] [nvarchar](500) NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL,
	[DocEntry] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARCreditMemo_Details]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCreditMemo_Details](
	[DocEntry] [int] NULL,
	[LineNum] [int] NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](254) NULL,
	[Quantity] [decimal](19, 6) NULL,
	[ShipDate] [date] NULL,
	[Price] [decimal](19, 6) NULL,
	[DiscPrcnt] [decimal](19, 6) NULL,
	[LineTotal] [decimal](19, 6) NULL,
	[TotalFrgn] [decimal](19, 6) NULL,
	[WhsCode] [nvarchar](20) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[OcrCode] [nvarchar](20) NULL,
	[CogsOcrCo2] [nvarchar](20) NULL,
	[CogsOcrCo3] [nvarchar](20) NULL,
	[CogsOcrCo4] [nvarchar](20) NULL,
	[CogsOcrCo5] [nvarchar](20) NULL,
	[GrssProfit] [decimal](19, 6) NULL,
	[GrssProfFC] [decimal](19, 6) NULL,
	[INMPrice] [decimal](19, 6) NULL,
	[InvQty] [decimal](19, 6) NULL,
	[LineStatus] [char](1) NULL,
	[BaseType] [int] NULL,
	[BaseEntry] [int] NULL,
	[BaseLine] [int] NULL,
	[PriceBefDi] [decimal](19, 6) NULL,
	[UomCode] [nvarchar](20) NULL,
	[UomCode2] [nvarchar](20) NULL,
	[VatGroup] [nvarchar](20) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFrgn] [decimal](19, 6) NULL,
	[DpmAmnt] [decimal](19, 6) NULL,
	[DpmAmntFC] [decimal](19, 6) NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARInvoice]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARInvoice](
	[DocEntry] [int] NOT NULL,
	[DocNum] [int] NULL,
	[DocType] [nvarchar](20) NULL,
	[CANCELED] [char](1) NULL,
	[DocStatus] [char](1) NULL,
	[ObjType] [int] NULL,
	[DocDate] [date] NULL,
	[DocDueDate] [date] NULL,
	[CardCode] [nvarchar](50) NULL,
	[CarsName] [nvarchar](100) NULL,
	[NumAtCard] [nvarchar](100) NULL,
	[Address] [nvarchar](254) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFC] [decimal](19, 6) NULL,
	[DiscSum] [decimal](19, 6) NULL,
	[DiscSumFC] [decimal](19, 6) NULL,
	[DocCur] [nvarchar](10) NULL,
	[DocRate] [decimal](19, 6) NULL,
	[DocTotal] [decimal](19, 6) NULL,
	[DocTotalFC] [decimal](19, 6) NULL,
	[GrosProfit] [decimal](19, 6) NULL,
	[GrosProfFC] [decimal](19, 6) NULL,
	[Comments] [nvarchar](500) NULL,
	[SlpCode] [int] NULL,
	[TaxDate] [date] NULL,
	[UserSign] [int] NULL,
	[TotalExpns] [decimal](19, 6) NULL,
	[Project] [nvarchar](50) NULL,
	[PayToCode] [nvarchar](50) NULL,
	[VZ_BL] [nvarchar](100) NULL,
	[VZ_PurTerm] [nvarchar](100) NULL,
	[VZ_DelTerm] [nvarchar](100) NULL,
	[VZ_PayTerm] [nvarchar](100) NULL,
	[VZ_SPL_TERM] [nvarchar](100) NULL,
	[GroupNum] [int] NULL,
	[TrnspCode] [int] NULL,
	[OrgAmount] [decimal](19, 6) NULL,
	[OrgAmountFC] [decimal](19, 6) NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_ARInvoice] PRIMARY KEY CLUSTERED 
(
	[DocEntry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARInvoice_Batch]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARInvoice_Batch](
	[BatchNum] [nvarchar](100) NULL,
	[ExpDate] [date] NULL,
	[PrdDate] [date] NULL,
	[InDate] [date] NULL,
	[SuppSerial] [nvarchar](100) NULL,
	[IntrSerial] [nvarchar](100) NULL,
	[Notes] [nvarchar](500) NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL,
	[DocEntry] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARInvoice_Details]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARInvoice_Details](
	[DocEntry] [int] NULL,
	[LineNum] [int] NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](254) NULL,
	[Quantity] [decimal](19, 6) NULL,
	[ShipDate] [date] NULL,
	[Price] [decimal](19, 6) NULL,
	[DiscPrcnt] [decimal](19, 6) NULL,
	[LineTotal] [decimal](19, 6) NULL,
	[TotalFrgn] [decimal](19, 6) NULL,
	[WhsCode] [nvarchar](20) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[OcrCode] [nvarchar](20) NULL,
	[CogsOcrCo2] [nvarchar](20) NULL,
	[CogsOcrCo3] [nvarchar](20) NULL,
	[CogsOcrCo4] [nvarchar](20) NULL,
	[CogsOcrCo5] [nvarchar](20) NULL,
	[GrssProfit] [decimal](19, 6) NULL,
	[GrssProfFC] [decimal](19, 6) NULL,
	[INMPrice] [decimal](19, 6) NULL,
	[InvQty] [decimal](19, 6) NULL,
	[LineStatus] [char](1) NULL,
	[BaseType] [int] NULL,
	[BaseEntry] [int] NULL,
	[BaseLine] [int] NULL,
	[PriceBefDi] [decimal](19, 6) NULL,
	[UomCode] [nvarchar](20) NULL,
	[UomCode2] [nvarchar](20) NULL,
	[VatGroup] [nvarchar](20) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFrgn] [decimal](19, 6) NULL,
	[DpmAmnt] [decimal](19, 6) NULL,
	[DpmAmntFC] [decimal](19, 6) NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BPMaster]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BPMaster](
	[RowID] [int] IDENTITY(1,1) NOT NULL,
	[CardCode] [nvarchar](50) NOT NULL,
	[CardName] [nvarchar](200) NULL,
	[CardType] [nvarchar](10) NULL,
	[GroupCode] [int] NULL,
	[Phone1] [nvarchar](50) NULL,
	[Phone2] [nvarchar](50) NULL,
	[E_Mail] [nvarchar](200) NULL,
	[Fax] [nvarchar](50) NULL,
	[AddID] [nvarchar](100) NULL,
	[RegNum] [nvarchar](100) NULL,
	[Notes] [nvarchar](max) NULL,
	[CreditLine] [decimal](18, 6) NULL,
	[DebtLine] [decimal](18, 6) NULL,
	[GroupNum] [int] NULL,
	[validFor] [char](1) NULL,
	[validFrom] [datetime] NULL,
	[validTo] [datetime] NULL,
	[CreatedDateTime] [datetime2](0) NOT NULL,
	[UpdatedDateTime] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyDetails]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyDetails](
	[CompnyName] [nvarchar](200) NULL,
	[Street] [nvarchar](200) NULL,
	[StreetNo] [nvarchar](50) NULL,
	[Block] [nvarchar](100) NULL,
	[Building] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](20) NULL,
	[City] [nvarchar](100) NULL,
	[Country] [nvarchar](10) NULL,
	[Phone1] [nvarchar](50) NULL,
	[Phone2] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[E_Mail] [nvarchar](254) NULL,
	[FreeZoneNo] [nvarchar](100) NULL,
	[TaxIdNum] [nvarchar](100) NULL,
	[CreatedDateTime] [datetime2](0) NOT NULL,
	[UpdatedDateTime] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[CurrCode] [nvarchar](10) NOT NULL,
	[CurrName] [nvarchar](100) NULL,
	[CreatedDateTime] [datetime2](0) NOT NULL,
	[UpdatedDateTime] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_Currencies] PRIMARY KEY CLUSTERED 
(
	[CurrCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[DocEntry] [int] IDENTITY(1,1) NOT NULL,
	[DocNum] [int] NULL,
	[DocType] [nvarchar](20) NULL,
	[CANCELED] [char](1) NULL,
	[DocStatus] [char](1) NULL,
	[ObjType] [int] NULL,
	[DocDate] [date] NULL,
	[DocDueDate] [date] NULL,
	[CardCode] [nvarchar](50) NULL,
	[CarsName] [nvarchar](200) NULL,
	[NumAtCard] [nvarchar](100) NULL,
	[Address] [nvarchar](500) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFC] [decimal](19, 6) NULL,
	[DiscSum] [decimal](19, 6) NULL,
	[DiscSumFC] [decimal](19, 6) NULL,
	[DocCur] [nvarchar](10) NULL,
	[DocRate] [decimal](19, 6) NULL,
	[DocTotal] [decimal](19, 6) NULL,
	[DocTotalFC] [decimal](19, 6) NULL,
	[GrosProfit] [decimal](19, 6) NULL,
	[GrosProfFC] [decimal](19, 6) NULL,
	[Comments] [nvarchar](1000) NULL,
	[SlpCode] [int] NULL,
	[TaxDate] [date] NULL,
	[UserSign] [int] NULL,
	[TotalExpns] [decimal](19, 6) NULL,
	[Project] [nvarchar](50) NULL,
	[PayToCode] [nvarchar](100) NULL,
	[VZ_BL] [nvarchar](100) NULL,
	[VZ_PurTerm] [nvarchar](100) NULL,
	[VZ_DelTerm] [nvarchar](100) NULL,
	[VZ_PayTerm] [nvarchar](100) NULL,
	[VZ_SPL_TERM] [nvarchar](100) NULL,
	[GroupNum] [int] NULL,
	[TrnspCode] [int] NULL,
	[CreateDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[DocEntry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery_Batch]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery_Batch](
	[DocEntry] [int] NULL,
	[BatchNum] [nvarchar](100) NULL,
	[ExpDate] [date] NULL,
	[PrdDate] [date] NULL,
	[InDate] [date] NULL,
	[SuppSerial] [nvarchar](100) NULL,
	[IntrSerial] [nvarchar](100) NULL,
	[Notes] [nvarchar](500) NULL,
	[CreateDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery_Details]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery_Details](
	[LineNum] [int] IDENTITY(1,1) NOT NULL,
	[DocEntry] [int] NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](200) NULL,
	[Quantity] [decimal](19, 6) NULL,
	[ShipDate] [date] NULL,
	[Price] [decimal](19, 6) NULL,
	[DiscPrcnt] [decimal](19, 6) NULL,
	[LineTotal] [decimal](19, 6) NULL,
	[TotalFrgn] [decimal](19, 6) NULL,
	[WhsCode] [nvarchar](20) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[OcrCode] [nvarchar](50) NULL,
	[CogsOcrCo2] [nvarchar](50) NULL,
	[CogsOcrCo3] [nvarchar](50) NULL,
	[CogsOcrCo4] [nvarchar](50) NULL,
	[CogsOcrCo5] [nvarchar](50) NULL,
	[GrssProfit] [decimal](19, 6) NULL,
	[GrssProfFC] [decimal](19, 6) NULL,
	[INMPrice] [decimal](19, 6) NULL,
	[InvQty] [decimal](19, 6) NULL,
	[LineStatus] [char](1) NULL,
	[BaseType] [int] NULL,
	[BaseEntry] [int] NULL,
	[BaseLine] [int] NULL,
	[PriceBefDi] [decimal](19, 6) NULL,
	[UomCode] [nvarchar](20) NULL,
	[UomCode2] [nvarchar](20) NULL,
	[VatGroup] [nvarchar](20) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFrgn] [decimal](19, 6) NULL,
	[CreateDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_Delivery_Details] PRIMARY KEY CLUSTERED 
(
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HouseBankAccounts]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HouseBankAccounts](
	[BankCode] [nvarchar](50) NOT NULL,
	[BankName] [nvarchar](200) NULL,
	[CreatedDateTime] [datetime2](0) NOT NULL,
	[UpdatedDateTime] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_HouseBankAccounts] PRIMARY KEY CLUSTERED 
(
	[BankCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomingPayment]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomingPayment](
	[DocEntry] [int] NOT NULL,
	[DocNum] [int] NULL,
	[DocType] [nvarchar](20) NULL,
	[Canceled] [char](1) NULL,
	[DocDate] [date] NULL,
	[DocDueDate] [date] NULL,
	[TaxDate] [date] NULL,
	[CardCode] [nvarchar](50) NULL,
	[CardName] [nvarchar](200) NULL,
	[CashAcct] [nvarchar](50) NULL,
	[CashSum] [decimal](19, 6) NULL,
	[CashSumFC] [decimal](19, 6) NULL,
	[CheckAcct] [nvarchar](50) NULL,
	[CheckSum] [decimal](19, 6) NULL,
	[CheckSumFC] [decimal](19, 6) NULL,
	[TrsfrAcct] [nvarchar](50) NULL,
	[TrsfrSum] [decimal](19, 6) NULL,
	[TrsfrSumFC] [decimal](19, 6) NULL,
	[TrsfrDate] [date] NULL,
	[TrsfrRef] [nvarchar](100) NULL,
	[PayNoDoc] [char](1) NULL,
	[NoDocSum] [decimal](19, 6) NULL,
	[NoDocSumFC] [decimal](19, 6) NULL,
	[BcgSum] [decimal](19, 6) NULL,
	[BcgSumFC] [decimal](19, 6) NULL,
	[DocCurr] [nvarchar](10) NULL,
	[DocRate] [decimal](19, 6) NULL,
	[DocTotal] [decimal](19, 6) NULL,
	[DocTotalFC] [decimal](19, 6) NULL,
	[CounterRef] [nvarchar](100) NULL,
	[Comments] [nvarchar](1000) NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_IncomingPayment] PRIMARY KEY CLUSTERED 
(
	[DocEntry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomingPayment_Details]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomingPayment_Details](
	[DocNum] [int] NULL,
	[DocEntry] [int] NOT NULL,
	[InvType] [int] NULL,
	[SumApplied] [decimal](19, 6) NULL,
	[AppliedFC] [decimal](19, 6) NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomingPayment_details1]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomingPayment_details1](
	[DocNum] [int] NOT NULL,
	[DocEntry] [int] NULL,
	[DueDate] [date] NULL,
	[CheckNum] [nvarchar](100) NULL,
	[BankCode] [nvarchar](50) NULL,
	[Branch] [nvarchar](100) NULL,
	[AcctNum] [nvarchar](100) NULL,
	[Details] [nvarchar](500) NULL,
	[CheckSum] [decimal](19, 6) NULL,
	[Currency] [nvarchar](10) NULL,
	[CheckAct] [nvarchar](50) NULL,
	[BnkActKey] [nvarchar](100) NULL,
	[ManualChk] [char](1) NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryTransfer]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryTransfer](
	[DocEntry] [int] NOT NULL,
	[DocNum] [int] NULL,
	[ObjType] [nvarchar](20) NULL,
	[CANCELED] [char](1) NULL,
	[DocStatus] [char](1) NULL,
	[DocDate] [date] NULL,
	[SlpCode] [int] NULL,
	[FromWarehouse] [nvarchar](50) NULL,
	[ToWarehouse] [nvarchar](50) NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_InventoryTransfer] PRIMARY KEY CLUSTERED 
(
	[DocEntry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryTransfer_Batch]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryTransfer_Batch](
	[DocEntry] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[BatchNum] [nvarchar](100) NOT NULL,
	[ExpDate] [date] NULL,
	[PrdDate] [date] NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryTransfer_Details]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryTransfer_Details](
	[DocEntry] [int] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ItemCode] [nvarchar](100) NULL,
	[Quantity] [decimal](19, 6) NULL,
	[UomCode] [nvarchar](50) NULL,
	[BaseType] [int] NULL,
	[BaseEntry] [int] NULL,
	[BaseLine] [int] NULL,
	[CreatedDate] [datetime2](0) NOT NULL,
	[UpdatedDate] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemMaster]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemMaster](
	[ItemCode] [nvarchar](50) NOT NULL,
	[ItemName] [nvarchar](200) NULL,
	[FrgnName] [nvarchar](200) NULL,
	[ItmsGrpCod] [int] NULL,
	[PrchseItem] [char](1) NULL,
	[SellItem] [char](1) NULL,
	[InvntItem] [char](1) NULL,
	[UgpCode] [nvarchar](50) NULL,
	[SalUnitMsr] [nvarchar](100) NULL,
	[U_VZ_SubGroup] [nvarchar](100) NULL,
	[U_VZ_SubGroup2] [nvarchar](100) NULL,
	[ManBtchNum] [char](1) NULL,
	[ManSerNum] [char](1) NULL,
	[validFor] [char](1) NULL,
	[validFrom] [date] NULL,
	[validTo] [date] NULL,
	[CreatedDateTime] [datetime2](0) NOT NULL,
	[UpdatedDateTime] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_ItemMaster] PRIMARY KEY CLUSTERED 
(
	[ItemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoadControl]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoadControl](
	[LoadControlID] [bigint] IDENTITY(1,1) NOT NULL,
	[SchemaName] [nvarchar](256) NOT NULL,
	[SourceTable] [nvarchar](256) NOT NULL,
	[TargetTable] [nvarchar](256) NOT NULL,
	[Activated] [bit] NOT NULL,
	[NewRecords] [bit] NOT NULL,
	[LoadType] [nvarchar](50) NULL,
	[LoadStatus] [nvarchar](50) NULL,
	[LastLoadDate] [datetime2](7) NULL,
	[LastLoadStartTime] [datetime2](7) NULL,
	[LastLoadEndTime] [datetime2](7) NULL,
	[LastLoadMessage] [nvarchar](500) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoadControl] PRIMARY KEY CLUSTERED 
(
	[LoadControlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceList]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceList](
	[ListNum] [int] NOT NULL,
	[ListName] [nvarchar](100) NULL,
	[ValidFor] [char](1) NULL,
	[PrimCurr] [nvarchar](10) NULL,
	[CreatedDateTime] [datetime2](0) NOT NULL,
	[UpdatedDateTime] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_PriceList] PRIMARY KEY CLUSTERED 
(
	[ListNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Return]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Return](
	[DocEntry] [int] IDENTITY(1,1) NOT NULL,
	[DocNum] [int] NULL,
	[DocType] [nvarchar](20) NULL,
	[CANCELED] [char](1) NULL,
	[DocStatus] [char](1) NULL,
	[ObjType] [int] NULL,
	[DocDate] [date] NULL,
	[DocDueDate] [date] NULL,
	[CardCode] [nvarchar](50) NULL,
	[CarsName] [nvarchar](200) NULL,
	[NumAtCard] [nvarchar](100) NULL,
	[Address] [nvarchar](500) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFC] [decimal](19, 6) NULL,
	[DiscSum] [decimal](19, 6) NULL,
	[DiscSumFC] [decimal](19, 6) NULL,
	[DocCur] [nvarchar](10) NULL,
	[DocRate] [decimal](19, 6) NULL,
	[DocTotal] [decimal](19, 6) NULL,
	[DocTotalFC] [decimal](19, 6) NULL,
	[GrosProfit] [decimal](19, 6) NULL,
	[GrosProfFC] [decimal](19, 6) NULL,
	[Comments] [nvarchar](1000) NULL,
	[SlpCode] [int] NULL,
	[TaxDate] [date] NULL,
	[UserSign] [int] NULL,
	[TotalExpns] [decimal](19, 6) NULL,
	[Project] [nvarchar](50) NULL,
	[PayToCode] [nvarchar](100) NULL,
	[VZ_BL] [nvarchar](100) NULL,
	[VZ_PurTerm] [nvarchar](100) NULL,
	[VZ_DelTerm] [nvarchar](100) NULL,
	[VZ_PayTerm] [nvarchar](100) NULL,
	[VZ_SPL_TERM] [nvarchar](100) NULL,
	[GroupNum] [int] NULL,
	[TrnspCode] [int] NULL,
	[CreateDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_Return] PRIMARY KEY CLUSTERED 
(
	[DocEntry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Return_Batch]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Return_Batch](
	[DocEntry] [int] NULL,
	[BatchNum] [nvarchar](100) NULL,
	[ExpDate] [date] NULL,
	[PrdDate] [date] NULL,
	[InDate] [date] NULL,
	[SuppSerial] [nvarchar](100) NULL,
	[IntrSerial] [nvarchar](100) NULL,
	[Notes] [nvarchar](500) NULL,
	[CreateDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Return_Details]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Return_Details](
	[LineNum] [int] IDENTITY(1,1) NOT NULL,
	[DocEntry] [int] NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](200) NULL,
	[Quantity] [decimal](19, 6) NULL,
	[ShipDate] [date] NULL,
	[Price] [decimal](19, 6) NULL,
	[DiscPrcnt] [decimal](19, 6) NULL,
	[LineTotal] [decimal](19, 6) NULL,
	[TotalFrgn] [decimal](19, 6) NULL,
	[WhsCode] [nvarchar](20) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[OcrCode] [nvarchar](50) NULL,
	[CogsOcrCo2] [nvarchar](50) NULL,
	[CogsOcrCo3] [nvarchar](50) NULL,
	[CogsOcrCo4] [nvarchar](50) NULL,
	[CogsOcrCo5] [nvarchar](50) NULL,
	[GrssProfit] [decimal](19, 6) NULL,
	[GrssProfFC] [decimal](19, 6) NULL,
	[INMPrice] [decimal](19, 6) NULL,
	[InvQty] [decimal](19, 6) NULL,
	[LineStatus] [char](1) NULL,
	[BaseType] [int] NULL,
	[BaseEntry] [int] NULL,
	[BaseLine] [int] NULL,
	[PriceBefDi] [decimal](19, 6) NULL,
	[UomCode] [nvarchar](20) NULL,
	[UomCode2] [nvarchar](20) NULL,
	[VatGroup] [nvarchar](20) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFrgn] [decimal](19, 6) NULL,
	[CreateDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_Return_Details] PRIMARY KEY CLUSTERED 
(
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesEmployees]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesEmployees](
	[SlpCode] [int] NOT NULL,
	[SlpName] [nvarchar](100) NULL,
	[Memo] [nvarchar](500) NULL,
	[Active] [char](1) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Mobil] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](254) NULL,
	[CreatedDateTime] [datetime2](0) NOT NULL,
	[UpdatedDateTime] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_SalesEmployees] PRIMARY KEY CLUSTERED 
(
	[SlpCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrder]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrder](
	[DocEntry] [int] IDENTITY(1,1) NOT NULL,
	[DocNum] [int] NULL,
	[DocType] [nvarchar](20) NULL,
	[CANCELED] [char](1) NULL,
	[DocStatus] [char](1) NULL,
	[ObjType] [int] NULL,
	[DocDate] [date] NULL,
	[DocDueDate] [date] NULL,
	[CardCode] [nvarchar](50) NULL,
	[CarsName] [nvarchar](200) NULL,
	[NumAtCard] [nvarchar](100) NULL,
	[Address] [nvarchar](500) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFC] [decimal](19, 6) NULL,
	[DiscSum] [decimal](19, 6) NULL,
	[DiscSumFC] [decimal](19, 6) NULL,
	[DocCur] [nvarchar](10) NULL,
	[DocRate] [decimal](19, 6) NULL,
	[DocTotal] [decimal](19, 6) NULL,
	[DocTotalFC] [decimal](19, 6) NULL,
	[GrosProfit] [decimal](19, 6) NULL,
	[GrosProfFC] [decimal](19, 6) NULL,
	[Comments] [nvarchar](1000) NULL,
	[SlpCode] [int] NULL,
	[TaxDate] [date] NULL,
	[UserSign] [int] NULL,
	[TotalExpns] [decimal](19, 6) NULL,
	[Project] [nvarchar](50) NULL,
	[PayToCode] [nvarchar](100) NULL,
	[VZ_BL] [nvarchar](100) NULL,
	[VZ_PurTerm] [nvarchar](100) NULL,
	[VZ_DelTerm] [nvarchar](100) NULL,
	[VZ_PayTerm] [nvarchar](100) NULL,
	[VZ_SPL_TERM] [nvarchar](100) NULL,
	[GroupNum] [int] NULL,
	[TrnspCode] [int] NULL,
	[InsertDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_ItemDocuments] PRIMARY KEY CLUSTERED 
(
	[DocEntry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrder_Details]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrder_Details](
	[LineID] [int] IDENTITY(1,1) NOT NULL,
	[LineNum] [int] NULL,
	[DocEntry] [int] NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](200) NULL,
	[Quantity] [decimal](19, 6) NULL,
	[ShipDate] [date] NULL,
	[Price] [decimal](19, 6) NULL,
	[DiscPrcnt] [decimal](19, 6) NULL,
	[LineTotal] [decimal](19, 6) NULL,
	[TotalFrgn] [decimal](19, 6) NULL,
	[WhsCode] [nvarchar](20) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[OcrCode] [nvarchar](50) NULL,
	[CogsOcrCo2] [nvarchar](50) NULL,
	[CogsOcrCo3] [nvarchar](50) NULL,
	[CogsOcrCo4] [nvarchar](50) NULL,
	[CogsOcrCo5] [nvarchar](50) NULL,
	[GrssProfit] [decimal](19, 6) NULL,
	[GrssProfFC] [decimal](19, 6) NULL,
	[INMPrice] [decimal](19, 6) NULL,
	[InvQty] [decimal](19, 6) NULL,
	[LineStatus] [char](1) NULL,
	[BaseType] [int] NULL,
	[BaseEntry] [int] NULL,
	[BaseLine] [int] NULL,
	[PriceBefDi] [decimal](19, 6) NULL,
	[UomCode] [nvarchar](20) NULL,
	[UomCode2] [nvarchar](20) NULL,
	[VatGroup] [nvarchar](20) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFrgn] [decimal](19, 6) NULL,
	[BatchNum] [nvarchar](100) NULL,
	[ExpDate] [date] NULL,
	[PrdDate] [date] NULL,
	[InDate] [date] NULL,
	[SuppSerial] [nvarchar](100) NULL,
	[IntrSerial] [nvarchar](100) NULL,
	[Notes] [nvarchar](500) NULL,
	[InsertDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_SalesOrder_Details] PRIMARY KEY CLUSTERED 
(
	[LineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesQuotation]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesQuotation](
	[DocEntry] [int] NOT NULL,
	[DocNum] [int] NOT NULL,
	[DocType] [nvarchar](1) NULL,
	[CANCELED] [nvarchar](1) NULL,
	[DocStatus] [nvarchar](1) NULL,
	[ObjType] [nvarchar](20) NULL,
	[DocDate] [datetime2](7) NULL,
	[DocDueDate] [datetime2](7) NULL,
	[CardCode] [nvarchar](15) NULL,
	[CarsName] [nvarchar](200) NULL,
	[NumAtCard] [nvarchar](200) NULL,
	[Address] [nvarchar](254) NULL,
	[VatSum] [decimal](21, 6) NULL,
	[VatSumFC] [decimal](21, 6) NULL,
	[DiscSum] [decimal](21, 6) NULL,
	[DiscSumFC] [decimal](21, 6) NULL,
	[DocCur] [nvarchar](3) NULL,
	[DocRate] [decimal](21, 6) NULL,
	[DocTotal] [decimal](21, 6) NULL,
	[DocTotalFC] [decimal](21, 6) NULL,
	[GrosProfit] [decimal](21, 6) NULL,
	[GrosProfFC] [decimal](21, 6) NULL,
	[Comments] [nvarchar](254) NULL,
	[SlpCode] [int] NULL,
	[TaxDate] [datetime2](7) NULL,
	[UserSign] [smallint] NULL,
	[TotalExpns] [decimal](21, 6) NULL,
	[Project] [nvarchar](20) NULL,
	[PayToCode] [nvarchar](50) NULL,
	[VZ_BL] [nvarchar](20) NULL,
	[VZ_PurTerm] [nvarchar](250) NULL,
	[VZ_DelTerm] [nvarchar](250) NULL,
	[VZ_PayTerm] [nvarchar](250) NULL,
	[VZ_SPL_TERM] [nvarchar](max) NULL,
	[GroupNum] [smallint] NULL,
	[TrnspCode] [smallint] NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OQUT] PRIMARY KEY CLUSTERED 
(
	[DocEntry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesQuotation_Details]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesQuotation_Details](
	[LineID] [int] IDENTITY(1,1) NOT NULL,
	[LineNum] [int] NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Dscription] [nvarchar](200) NULL,
	[Quantity] [decimal](19, 6) NULL,
	[ShipDate] [date] NULL,
	[Price] [decimal](19, 6) NULL,
	[DiscPrcnt] [decimal](19, 6) NULL,
	[LineTotal] [decimal](19, 6) NULL,
	[TotalFrgn] [decimal](19, 6) NULL,
	[WhsCode] [nvarchar](20) NULL,
	[AcctCode] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[OcrCode] [nvarchar](50) NULL,
	[CogsOcrCo2] [nvarchar](50) NULL,
	[CogsOcrCo3] [nvarchar](50) NULL,
	[CogsOcrCo4] [nvarchar](50) NULL,
	[CogsOcrCo5] [nvarchar](50) NULL,
	[GrssProfit] [decimal](19, 6) NULL,
	[GrssProfFC] [decimal](19, 6) NULL,
	[INMPrice] [decimal](19, 6) NULL,
	[InvQty] [decimal](19, 6) NULL,
	[LineStatus] [nvarchar](20) NULL,
	[BaseType] [int] NULL,
	[BaseEntry] [int] NULL,
	[BaseLine] [int] NULL,
	[PriceBefDi] [decimal](19, 6) NULL,
	[UomCode] [nvarchar](20) NULL,
	[UomCode2] [nvarchar](20) NULL,
	[VatGroup] [nvarchar](20) NULL,
	[VatSum] [decimal](19, 6) NULL,
	[VatSumFrgn] [decimal](19, 6) NULL,
	[CreateDate] [datetime2](0) NOT NULL,
	[UpdateDate] [datetime2](0) NOT NULL,
	[DocEntry] [int] NULL,
 CONSTRAINT [PK_ItemDocumentLines] PRIMARY KEY CLUSTERED 
(
	[LineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UoMGroup]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UoMGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UgpCode] [nvarchar](100) NOT NULL,
	[UgpName] [nvarchar](100) NULL,
	[BaseUom] [int] NULL,
	[UomEntry] [int] NULL,
	[BaseQty] [decimal](19, 6) NULL,
	[AltQty] [decimal](19, 6) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[USER_CODE] [nvarchar](50) NOT NULL,
	[U_NAME] [nvarchar](100) NULL,
	[E_Mail] [nvarchar](254) NULL,
	[Department] [nvarchar](100) NULL,
	[PortNum] [nvarchar](150) NULL,
	[Locked] [char](1) NULL,
	[CreatedDateTime] [datetime2](0) NOT NULL,
	[UpdatedDateTime] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[USER_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[WhsCode] [nvarchar](50) NOT NULL,
	[WhsName] [nvarchar](200) NULL,
	[Inactive] [nvarchar](5) NULL,
	[U_VZ_Van] [nvarchar](200) NULL,
	[CreatedDateTime] [datetime2](0) NOT NULL,
	[UpdatedDateTime] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[WhsCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ARCreditMemo] ADD  CONSTRAINT [DF_ARCreditMemo_CreatedDate]  DEFAULT (sysutcdatetime()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ARCreditMemo] ADD  CONSTRAINT [DF_ARCreditMemo_UpdatedDate]  DEFAULT (sysutcdatetime()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ARCreditMemo_Batch] ADD  CONSTRAINT [DF_ARCreditMemo_Batch_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ARCreditMemo_Batch] ADD  CONSTRAINT [DF_ARCreditMemo_Batch_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ARCreditMemo_Details] ADD  CONSTRAINT [DF_ARCreditMemo_Details_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ARCreditMemo_Details] ADD  CONSTRAINT [DF_ARCreditMemo_Details_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ARInvoice] ADD  CONSTRAINT [DF_ARInvoice_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ARInvoice] ADD  CONSTRAINT [DF_ARInvoice_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ARInvoice_Batch] ADD  CONSTRAINT [DF_ARInvoice_Batch_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ARInvoice_Batch] ADD  CONSTRAINT [DF_ARInvoice_Batch_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ARInvoice_Details] ADD  CONSTRAINT [DF_ARInvoice_Details_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ARInvoice_Details] ADD  CONSTRAINT [DF_ARInvoice_Details_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[BPMaster] ADD  CONSTRAINT [DF_BPMaster_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[BPMaster] ADD  CONSTRAINT [DF_BPMaster_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[CompanyDetails] ADD  CONSTRAINT [DF_CompanyDetails_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[CompanyDetails] ADD  CONSTRAINT [DF_CompanyDetails_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Currencies] ADD  CONSTRAINT [DF_Currencies_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[Currencies] ADD  CONSTRAINT [DF_Currencies_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Delivery] ADD  CONSTRAINT [DF_Delivery_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Delivery] ADD  CONSTRAINT [DF_Delivery_UpdateDate]  DEFAULT (sysdatetime()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Delivery_Batch] ADD  CONSTRAINT [DF_Delivery_Batch_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Delivery_Batch] ADD  CONSTRAINT [DF_Delivery_Batch_UpdateDate]  DEFAULT (sysdatetime()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Delivery_Details] ADD  CONSTRAINT [DF_Delivery_Details_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Delivery_Details] ADD  CONSTRAINT [DF_Delivery_Details_UpdateDate]  DEFAULT (sysdatetime()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[HouseBankAccounts] ADD  CONSTRAINT [DF_HouseBankAccounts_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[HouseBankAccounts] ADD  CONSTRAINT [DF_HouseBankAccounts_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[IncomingPayment] ADD  CONSTRAINT [DF_IncomingPayment_CreatedDate]  DEFAULT (sysutcdatetime()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[IncomingPayment] ADD  CONSTRAINT [DF_IncomingPayment_UpdatedDate]  DEFAULT (sysutcdatetime()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[IncomingPayment_Details] ADD  CONSTRAINT [DF_IncomingPayment_Details_CreatedDate]  DEFAULT (sysutcdatetime()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[IncomingPayment_Details] ADD  CONSTRAINT [DF_IncomingPayment_Details_UpdatedDate]  DEFAULT (sysutcdatetime()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[IncomingPayment_details1] ADD  CONSTRAINT [DF_IncomingPayment_details1_CreatedDate]  DEFAULT (sysutcdatetime()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[IncomingPayment_details1] ADD  CONSTRAINT [DF_IncomingPayment_details1_UpdatedDate]  DEFAULT (sysutcdatetime()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[InventoryTransfer] ADD  CONSTRAINT [DF_InventoryTransfer_CreatedDate]  DEFAULT (sysutcdatetime()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[InventoryTransfer] ADD  CONSTRAINT [DF_InventoryTransfer_UpdatedDate]  DEFAULT (sysutcdatetime()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[InventoryTransfer_Batch] ADD  CONSTRAINT [DF_InventoryTransfer_Batch_CreatedDate]  DEFAULT (sysutcdatetime()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[InventoryTransfer_Batch] ADD  CONSTRAINT [DF_InventoryTransfer_Batch_UpdatedDate]  DEFAULT (sysutcdatetime()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[InventoryTransfer_Details] ADD  CONSTRAINT [DF_InventoryTransfer_Details_CreatedDate]  DEFAULT (sysutcdatetime()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[InventoryTransfer_Details] ADD  CONSTRAINT [DF_InventoryTransfer_Details_UpdatedDate]  DEFAULT (sysutcdatetime()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ItemMaster] ADD  CONSTRAINT [DF_ItemMaster_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[ItemMaster] ADD  CONSTRAINT [DF_ItemMaster_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[LoadControl] ADD  DEFAULT ((1)) FOR [Activated]
GO
ALTER TABLE [dbo].[LoadControl] ADD  DEFAULT ((0)) FOR [NewRecords]
GO
ALTER TABLE [dbo].[LoadControl] ADD  DEFAULT (sysdatetime()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceList] ADD  CONSTRAINT [DF_PriceList_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[PriceList] ADD  CONSTRAINT [DF_PriceList_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Return] ADD  CONSTRAINT [DF_Return_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Return] ADD  CONSTRAINT [DF_Return_UpdateDate]  DEFAULT (sysdatetime()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Return_Batch] ADD  CONSTRAINT [DF_Return_Batch_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Return_Batch] ADD  CONSTRAINT [DF_Return_Batch_UpdateDate]  DEFAULT (sysdatetime()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Return_Details] ADD  CONSTRAINT [DF_Return_Details_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Return_Details] ADD  CONSTRAINT [DF_Return_Details_UpdateDate]  DEFAULT (sysdatetime()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[SalesEmployees] ADD  CONSTRAINT [DF_SalesEmployees_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[SalesEmployees] ADD  CONSTRAINT [DF_SalesEmployees_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[SalesOrder] ADD  CONSTRAINT [DF_ItemDocuments_InsertDate]  DEFAULT (sysdatetime()) FOR [InsertDate]
GO
ALTER TABLE [dbo].[SalesOrder] ADD  CONSTRAINT [DF_ItemDocuments_UpdateDate]  DEFAULT (sysdatetime()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[SalesOrder_Details] ADD  CONSTRAINT [DF_SalesOrder_Details_InsertDate]  DEFAULT (sysdatetime()) FOR [InsertDate]
GO
ALTER TABLE [dbo].[SalesOrder_Details] ADD  CONSTRAINT [DF_SalesOrder_Details_UpdateDate]  DEFAULT (sysdatetime()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[SalesQuotation] ADD  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[SalesQuotation] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[SalesQuotation_Details] ADD  CONSTRAINT [DF_ItemDocumentLines_CreateDate]  DEFAULT (sysdatetime()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[SalesQuotation_Details] ADD  CONSTRAINT [DF_ItemDocumentLines_UpdateDate]  DEFAULT (sysdatetime()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[UoMGroup] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UoMGroup] ADD  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[UoMGroup] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Warehouse] ADD  CONSTRAINT [DF_Warehouse_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
ALTER TABLE [dbo].[Warehouse] ADD  CONSTRAINT [DF_Warehouse_UpdatedDateTime]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
/****** Object:  StoredProcedure [dbo].[sp_ARCreditMemo_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ARCreditMemo_Insert]
(
    @DocEntry INT = NULL,
    @DocNum INT = NULL,
    @DocType NVARCHAR(20) = NULL,
    @CANCELED CHAR(1) = NULL,
    @DocStatus CHAR(1) = NULL,
    @ObjType NVARCHAR(20) = NULL,
    @DocDate DATE = NULL,
    @DocDueDate DATE = NULL,
    @CardCode NVARCHAR(50) = NULL,
    @CarsName NVARCHAR(200) = NULL,
    @NumAtCard NVARCHAR(100) = NULL,
    @Address NVARCHAR(500) = NULL,
    @VatSum DECIMAL(19,6) = NULL,
    @VatSumFC DECIMAL(19,6) = NULL,
    @DiscSum DECIMAL(19,6) = NULL,
    @DiscSumFC DECIMAL(19,6) = NULL,
    @DocCur NVARCHAR(10) = NULL,
    @DocRate DECIMAL(19,6) = NULL,
    @DocTotal DECIMAL(19,6) = NULL,
    @DocTotalFC DECIMAL(19,6) = NULL,
    @GrosProfit DECIMAL(19,6) = NULL,
    @GrosProfFC DECIMAL(19,6) = NULL,
    @Comments NVARCHAR(1000) = NULL,
    @SlpCode INT = NULL,
    @TaxDate DATE = NULL,
    @UserSign INT = NULL,
    @TotalExpns DECIMAL(19,6) = NULL,
    @Project NVARCHAR(50) = NULL,
    @PayToCode NVARCHAR(100) = NULL,
    @VZ_BL NVARCHAR(100) = NULL,
    @VZ_PurTerm NVARCHAR(100) = NULL,
    @VZ_DelTerm NVARCHAR(100) = NULL,
    @VZ_PayTerm NVARCHAR(100) = NULL,
    @VZ_SPL_TERM NVARCHAR(100) = NULL,
    @GroupNum INT = NULL,
    @TrnspCode INT = NULL,
    @OrgAmount DECIMAL(19,6) = NULL,
    @OrgAmountFC DECIMAL(19,6) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        -- =============================================
        -- UPDATE EXISTING AR CREDIT MEMO
        -- =============================================
        IF @DocEntry IS NOT NULL
           AND EXISTS
           (
               SELECT 1
               FROM [dbo].[ARCreditMemo]
               WHERE [DocEntry] = @DocEntry
           )
        BEGIN

            UPDATE [dbo].[ARCreditMemo]
            SET
                [DocNum] = @DocNum,
                [DocType] = @DocType,
                [CANCELED] = @CANCELED,
                [DocStatus] = @DocStatus,
                [ObjType] = @ObjType,
                [DocDate] = @DocDate,
                [DocDueDate] = @DocDueDate,
                [CardCode] = @CardCode,
                [CarsName] = @CarsName,
                [NumAtCard] = @NumAtCard,
                [Address] = @Address,
                [VatSum] = @VatSum,
                [VatSumFC] = @VatSumFC,
                [DiscSum] = @DiscSum,
                [DiscSumFC] = @DiscSumFC,
                [DocCur] = @DocCur,
                [DocRate] = @DocRate,
                [DocTotal] = @DocTotal,
                [DocTotalFC] = @DocTotalFC,
                [GrosProfit] = @GrosProfit,
                [GrosProfFC] = @GrosProfFC,
                [Comments] = @Comments,
                [SlpCode] = @SlpCode,
                [TaxDate] = @TaxDate,
                [UserSign] = @UserSign,
                [TotalExpns] = @TotalExpns,
                [Project] = @Project,
                [PayToCode] = @PayToCode,
                [VZ_BL] = @VZ_BL,
                [VZ_PurTerm] = @VZ_PurTerm,
                [VZ_DelTerm] = @VZ_DelTerm,
                [VZ_PayTerm] = @VZ_PayTerm,
                [VZ_SPL_TERM] = @VZ_SPL_TERM,
                [GroupNum] = @GroupNum,
                [TrnspCode] = @TrnspCode,
                [OrgAmount] = @OrgAmount,
                [OrgAmountFC] = @OrgAmountFC,
                [UpdatedDate] = SYSDATETIME()
            WHERE [DocEntry] = @DocEntry;

            -- Return updated DocEntry
            SELECT
                [DocEntry]
            FROM [dbo].[ARCreditMemo]
            WHERE [DocEntry] = @DocEntry;

            RETURN;
        END;


        -- =============================================
        -- VALIDATE DOCENTRY FOR NEW INSERT
        -- =============================================
        IF @DocEntry IS NULL
        BEGIN
            THROW 50001, 'DocEntry is required when inserting a new AR Credit Memo.', 1;
        END;


        -- =============================================
        -- INSERT NEW AR CREDIT MEMO
        -- =============================================
        INSERT INTO [dbo].[ARCreditMemo]
        (
            [DocEntry],
            [DocNum],
            [DocType],
            [CANCELED],
            [DocStatus],
            [ObjType],
            [DocDate],
            [DocDueDate],
            [CardCode],
            [CarsName],
            [NumAtCard],
            [Address],
            [VatSum],
            [VatSumFC],
            [DiscSum],
            [DiscSumFC],
            [DocCur],
            [DocRate],
            [DocTotal],
            [DocTotalFC],
            [GrosProfit],
            [GrosProfFC],
            [Comments],
            [SlpCode],
            [TaxDate],
            [UserSign],
            [TotalExpns],
            [Project],
            [PayToCode],
            [VZ_BL],
            [VZ_PurTerm],
            [VZ_DelTerm],
            [VZ_PayTerm],
            [VZ_SPL_TERM],
            [GroupNum],
            [TrnspCode],
            [OrgAmount],
            [OrgAmountFC]
        )
        VALUES
        (
            @DocEntry,
            @DocNum,
            @DocType,
            @CANCELED,
            @DocStatus,
            @ObjType,
            @DocDate,
            @DocDueDate,
            @CardCode,
            @CarsName,
            @NumAtCard,
            @Address,
            @VatSum,
            @VatSumFC,
            @DiscSum,
            @DiscSumFC,
            @DocCur,
            @DocRate,
            @DocTotal,
            @DocTotalFC,
            @GrosProfit,
            @GrosProfFC,
            @Comments,
            @SlpCode,
            @TaxDate,
            @UserSign,
            @TotalExpns,
            @Project,
            @PayToCode,
            @VZ_BL,
            @VZ_PurTerm,
            @VZ_DelTerm,
            @VZ_PayTerm,
            @VZ_SPL_TERM,
            @GroupNum,
            @TrnspCode,
            @OrgAmount,
            @OrgAmountFC
        );


        -- =============================================
        -- RETURN NEWLY INSERTED DOCENTRY
        -- =============================================
        SELECT
            [DocEntry]
        FROM [dbo].[ARCreditMemo]
        WHERE [DocEntry] = @DocEntry;


    END TRY
    BEGIN CATCH

        THROW;

    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ARCreditMemo_Select]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  

 create PROCEDURE [dbo].[sp_ARCreditMemo_Select]
(
    @Type INT,
    @StartDate DATE = NULL,
    @EndDate DATE = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
(
    SELECT
        -- ============================================
        -- HEADER
        -- ============================================
        H.DocEntry,
		H.DocNum,
		H.DocType,
		H.CANCELED,
		H.DocStatus,
		H.ObjType,
		H.DocDate,
		H.DocDueDate,
		H.CardCode,
		H.CarsName,
		H.NumAtCard,
		H.Address,
		H.VatSum,
		H.VatSumFC,
		H.DiscSum,
		H.DiscSumFC,
		H.DocCur,
		H.DocRate,
		H.DocTotal,
		H.DocTotalFC,
		H.GrosProfit,
		H.GrosProfFC,
		H.Comments,
		H.SlpCode,
		H.TaxDate,
		H.UserSign,
		H.TotalExpns,
		H.Project,
		H.PayToCode,
		H.VZ_BL,
		H.VZ_PurTerm,
		H.VZ_DelTerm,
		H.VZ_PayTerm,
		H.VZ_SPL_TERM,
		H.GroupNum,
		H.TrnspCode,
		H.OrgAmount,
		H.OrgAmountFC,
		H.CreatedDate,
		H.UpdatedDate,

        -- ============================================
        -- DETAILS
        -- ============================================
        JSON_QUERY
        (
            (
                SELECT
                    D.[DocEntry],
                    D.[LineNum],
                    D.[ItemCode],
                    D.[Dscription],
                    D.[Quantity],
                    D.[ShipDate],
                    D.[Price],
                    D.[DiscPrcnt],
                    D.[LineTotal],
                    D.[TotalFrgn],
                    D.[WhsCode],
                    D.[AcctCode],
                    D.[Project],
                    D.[OcrCode],
                    D.[CogsOcrCo2],
                    D.[CogsOcrCo3],
                    D.[CogsOcrCo4],
                    D.[CogsOcrCo5],
                    D.[GrssProfit],
                    D.[GrssProfFC],
                    D.[INMPrice],
                    D.[InvQty],
                    D.[LineStatus],
                    D.[BaseType],
                    D.[BaseEntry],
                    D.[BaseLine],
                    D.[PriceBefDi],
                    D.[UomCode],
                    D.[UomCode2],
                    D.[VatGroup],
                    D.[VatSum],
                    D.[VatSumFrgn],
                    D.[DpmAmnt],
                    D.[DpmAmntFC],
                    D.[CreatedDate],
                    D.[UpdatedDate]

                FROM [dbo].[ARCreditMemo_Details] D

                WHERE D.[DocEntry] = H.[DocEntry]

                FOR JSON PATH
            )
        ) AS [Details],

        -- ============================================
        -- BATCH
        -- ============================================
        JSON_QUERY
        (
            (
                SELECT
                    B.[DocEntry],
                    B.[BatchNum],
                    B.[ExpDate],
                    B.[PrdDate],
                    B.[InDate],
                    B.[SuppSerial],
                    B.[IntrSerial],
                    B.[Notes],
                    B.[CreatedDate],
                    B.[UpdatedDate]

                FROM [dbo].[ARCreditMemo_Batch] B

                WHERE B.[DocEntry] = H.[DocEntry]

                FOR JSON PATH
            )
        ) AS [Batch]

    FROM [dbo].[ARCreditMemo] H

    WHERE
        (
            @Type = 1
        )
        OR
        (
            @Type = 2
            AND H.[DocDate] >= @StartDate
            AND H.[DocDate] < DATEADD(DAY, 1, @EndDate)
        )

    FOR JSON PATH

) AS [JsonResult];


END
GO
/****** Object:  StoredProcedure [dbo].[sp_ARInvoice_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE   PROCEDURE [dbo].[sp_ARInvoice_Insert]
(
    @DocEntry INT = NULL,
    @DocNum INT = NULL,
    @DocType NVARCHAR(20) = NULL,
    @CANCELED CHAR(1) = NULL,
    @DocStatus CHAR(1) = NULL,
    @ObjType INT = NULL,
    @DocDate DATE = NULL,
    @DocDueDate DATE = NULL,
    @CardCode NVARCHAR(50) = NULL,
    @CarsName NVARCHAR(100) = NULL,
    @NumAtCard NVARCHAR(100) = NULL,
    @Address NVARCHAR(254) = NULL,
    @VatSum DECIMAL(19,6) = NULL,
    @VatSumFC DECIMAL(19,6) = NULL,
    @DiscSum DECIMAL(19,6) = NULL,
    @DiscSumFC DECIMAL(19,6) = NULL,
    @DocCur NVARCHAR(10) = NULL,
    @DocRate DECIMAL(19,6) = NULL,
    @DocTotal DECIMAL(19,6) = NULL,
    @DocTotalFC DECIMAL(19,6) = NULL,
    @GrosProfit DECIMAL(19,6) = NULL,
    @GrosProfFC DECIMAL(19,6) = NULL,
    @Comments NVARCHAR(500) = NULL,
    @SlpCode INT = NULL,
    @TaxDate DATE = NULL,
    @UserSign INT = NULL,
    @TotalExpns DECIMAL(19,6) = NULL,
    @Project NVARCHAR(50) = NULL,
    @PayToCode NVARCHAR(50) = NULL,
    @VZ_BL NVARCHAR(100) = NULL,
    @VZ_PurTerm NVARCHAR(100) = NULL,
    @VZ_DelTerm NVARCHAR(100) = NULL,
    @VZ_PayTerm NVARCHAR(100) = NULL,
    @VZ_SPL_TERM NVARCHAR(100) = NULL,
    @GroupNum INT = NULL,
    @TrnspCode INT = NULL,
    @OrgAmount DECIMAL(19,6) = NULL,
    @OrgAmountFC DECIMAL(19,6) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        -- =============================================
        -- UPDATE EXISTING AR INVOICE
        -- =============================================
        IF @DocEntry IS NOT NULL
           AND EXISTS
           (
               SELECT 1
               FROM [dbo].[ARInvoice]
               WHERE [DocEntry] = @DocEntry
           )
        BEGIN

            UPDATE [dbo].[ARInvoice]
            SET
                [DocNum] = @DocNum,
                [DocType] = @DocType,
                [CANCELED] = @CANCELED,
                [DocStatus] = @DocStatus,
                [ObjType] = @ObjType,
                [DocDate] = @DocDate,
                [DocDueDate] = @DocDueDate,
                [CardCode] = @CardCode,
                [CarsName] = @CarsName,
                [NumAtCard] = @NumAtCard,
                [Address] = @Address,
                [VatSum] = @VatSum,
                [VatSumFC] = @VatSumFC,
                [DiscSum] = @DiscSum,
                [DiscSumFC] = @DiscSumFC,
                [DocCur] = @DocCur,
                [DocRate] = @DocRate,
                [DocTotal] = @DocTotal,
                [DocTotalFC] = @DocTotalFC,
                [GrosProfit] = @GrosProfit,
                [GrosProfFC] = @GrosProfFC,
                [Comments] = @Comments,
                [SlpCode] = @SlpCode,
                [TaxDate] = @TaxDate,
                [UserSign] = @UserSign,
                [TotalExpns] = @TotalExpns,
                [Project] = @Project,
                [PayToCode] = @PayToCode,
                [VZ_BL] = @VZ_BL,
                [VZ_PurTerm] = @VZ_PurTerm,
                [VZ_DelTerm] = @VZ_DelTerm,
                [VZ_PayTerm] = @VZ_PayTerm,
                [VZ_SPL_TERM] = @VZ_SPL_TERM,
                [GroupNum] = @GroupNum,
                [TrnspCode] = @TrnspCode,
                [OrgAmount] = @OrgAmount,
                [OrgAmountFC] = @OrgAmountFC,
                [UpdatedDate] = SYSDATETIME()
            WHERE [DocEntry] = @DocEntry;

            -- Return updated DocEntry
            SELECT
                [DocEntry]
            FROM [dbo].[ARInvoice]
            WHERE [DocEntry] = @DocEntry;

            RETURN;
        END;


        -- =============================================
        -- VALIDATE DOCENTRY FOR NEW INSERT
        -- =============================================
        IF @DocEntry IS NULL
        BEGIN
            THROW 50001, 'DocEntry is required when inserting a new AR Invoice.', 1;
        END;


        -- =============================================
        -- INSERT NEW AR INVOICE
        -- =============================================
        INSERT INTO [dbo].[ARInvoice]
        (
            [DocEntry],
            [DocNum],
            [DocType],
            [CANCELED],
            [DocStatus],
            [ObjType],
            [DocDate],
            [DocDueDate],
            [CardCode],
            [CarsName],
            [NumAtCard],
            [Address],
            [VatSum],
            [VatSumFC],
            [DiscSum],
            [DiscSumFC],
            [DocCur],
            [DocRate],
            [DocTotal],
            [DocTotalFC],
            [GrosProfit],
            [GrosProfFC],
            [Comments],
            [SlpCode],
            [TaxDate],
            [UserSign],
            [TotalExpns],
            [Project],
            [PayToCode],
            [VZ_BL],
            [VZ_PurTerm],
            [VZ_DelTerm],
            [VZ_PayTerm],
            [VZ_SPL_TERM],
            [GroupNum],
            [TrnspCode],
            [OrgAmount],
            [OrgAmountFC]
        )
        VALUES
        (
            @DocEntry,
            @DocNum,
            @DocType,
            @CANCELED,
            @DocStatus,
            @ObjType,
            @DocDate,
            @DocDueDate,
            @CardCode,
            @CarsName,
            @NumAtCard,
            @Address,
            @VatSum,
            @VatSumFC,
            @DiscSum,
            @DiscSumFC,
            @DocCur,
            @DocRate,
            @DocTotal,
            @DocTotalFC,
            @GrosProfit,
            @GrosProfFC,
            @Comments,
            @SlpCode,
            @TaxDate,
            @UserSign,
            @TotalExpns,
            @Project,
            @PayToCode,
            @VZ_BL,
            @VZ_PurTerm,
            @VZ_DelTerm,
            @VZ_PayTerm,
            @VZ_SPL_TERM,
            @GroupNum,
            @TrnspCode,
            @OrgAmount,
            @OrgAmountFC
        );


        -- =============================================
        -- RETURN NEWLY INSERTED DOCENTRY
        -- =============================================
        SELECT
            [DocEntry]
        FROM [dbo].[ARInvoice]
        WHERE [DocEntry] = @DocEntry;


    END TRY
    BEGIN CATCH

        THROW;

    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ARInvoice_Select]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

 create PROCEDURE [dbo].[sp_ARInvoice_Select]
(
    @Type INT,
    @StartDate DATE = NULL,
    @EndDate DATE = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
(
    SELECT
        -- ============================================
        -- HEADER
        -- ============================================
        H.[DocEntry],
        H.[DocNum],
        H.[DocType],
        H.[CANCELED],
        H.[DocStatus],
        H.[ObjType],
        H.[DocDate],
        H.[DocDueDate],
        H.[CardCode],
        H.[CarsName],
        H.[NumAtCard],
        H.[Address],
        H.[VatSum],
        H.[VatSumFC],
        H.[DiscSum],
        H.[DiscSumFC],
        H.[DocCur],
        H.[DocRate],
        H.[DocTotal],
        H.[DocTotalFC],
        H.[GrosProfit],
        H.[GrosProfFC],
        H.[Comments],
        H.[SlpCode],
        H.[TaxDate],
        H.[UserSign],
        H.[TotalExpns],
        H.[Project],
        H.[PayToCode],
        H.[VZ_BL],
        H.[VZ_PurTerm],
        H.[VZ_DelTerm],
        H.[VZ_PayTerm],
        H.[VZ_SPL_TERM],
        H.[GroupNum],
        H.[TrnspCode],
        H.[OrgAmount],
        H.[OrgAmountFC],
        H.[CreatedDate],
        H.[UpdatedDate],

        -- ============================================
        -- DETAILS
        -- ============================================
        JSON_QUERY
        (
            (
                SELECT
                    D.[DocEntry],
                    D.[LineNum],
                    D.[ItemCode],
                    D.[Dscription],
                    D.[Quantity],
                    D.[ShipDate],
                    D.[Price],
                    D.[DiscPrcnt],
                    D.[LineTotal],
                    D.[TotalFrgn],
                    D.[WhsCode],
                    D.[AcctCode],
                    D.[Project],
                    D.[OcrCode],
                    D.[CogsOcrCo2],
                    D.[CogsOcrCo3],
                    D.[CogsOcrCo4],
                    D.[CogsOcrCo5],
                    D.[GrssProfit],
                    D.[GrssProfFC],
                    D.[INMPrice],
                    D.[InvQty],
                    D.[LineStatus],
                    D.[BaseType],
                    D.[BaseEntry],
                    D.[BaseLine],
                    D.[PriceBefDi],
                    D.[UomCode],
                    D.[UomCode2],
                    D.[VatGroup],
                    D.[VatSum],
                    D.[VatSumFrgn],
                    D.[DpmAmnt],
                    D.[DpmAmntFC],
                    D.[CreatedDate],
                    D.[UpdatedDate]

                FROM [dbo].[ARInvoice_Details] D

                WHERE D.[DocEntry] = H.[DocEntry]

                FOR JSON PATH
            )
        ) AS [Details],

        -- ============================================
        -- BATCH
        -- ============================================
        JSON_QUERY
        (
            (
                SELECT
                    B.[DocEntry],
                    B.[BatchNum],
                    B.[ExpDate],
                    B.[PrdDate],
                    B.[InDate],
                    B.[SuppSerial],
                    B.[IntrSerial],
                    B.[Notes],
                    B.[CreatedDate],
                    B.[UpdatedDate]

                FROM [dbo].[ARInvoice_Batch] B

                WHERE B.[DocEntry] = H.[DocEntry]

                FOR JSON PATH
            )
        ) AS [Batch]

    FROM [dbo].[ARInvoice] H

    WHERE
        (
            @Type = 1
        )
        OR
        (
            @Type = 2
            AND H.[DocDate] >= @StartDate
            AND H.[DocDate] < DATEADD(DAY, 1, @EndDate)
        )

    FOR JSON PATH

) AS [JsonResult];


END
GO
/****** Object:  StoredProcedure [dbo].[sp_BPMaster_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

 CREATE   PROCEDURE  [dbo].[sp_BPMaster_Insert]
(
    @CardCode NVARCHAR(50),
    @CardName NVARCHAR(200) = NULL,
    @CardType NVARCHAR(10) = NULL,
    @GroupCode INT = NULL,
    @Phone1 NVARCHAR(50) = NULL,
    @Phone2 NVARCHAR(50) = NULL,
    @E_Mail NVARCHAR(200) = NULL,
    @Fax NVARCHAR(50) = NULL,
    @AddID NVARCHAR(100) = NULL,
    @RegNum NVARCHAR(100) = NULL,
    @Notes NVARCHAR(MAX) = NULL,
    @CreditLine DECIMAL(18,6) = NULL,
    @DebtLine DECIMAL(18,6) = NULL,
    @GroupNum INT = NULL,
    @validFor CHAR(1) = NULL,
    @validFrom DATETIME = NULL,
    @validTo DATETIME = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

     -- Check if CardCode already exists
    IF EXISTS
    (
        SELECT 1
        FROM dbo.BPMaster
        WHERE CardCode = @CardCode
    )
    BEGIN
        -- Update existing record
        UPDATE dbo.BPMaster
        SET
            CardName = @CardName,
            CardType = @CardType,
            GroupCode = @GroupCode,
            Phone1 = @Phone1,
            Phone2 = @Phone2,
            E_Mail = @E_Mail,
            Fax = @Fax,
            AddID = @AddID,
            RegNum = @RegNum,
            Notes = @Notes,
            CreditLine = @CreditLine,
            DebtLine = @DebtLine,
            GroupNum = @GroupNum,
            validFor = @validFor,
            validFrom = @validFrom,
            validTo = @validTo,
            UpdatedDateTime = GETDATE()
        WHERE CardCode = @CardCode;

        -- Return existing RowID
        SELECT RowID
        FROM dbo.BPMaster
        WHERE CardCode = @CardCode;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO dbo.BPMaster
        (
            CardCode,
            CardName,
            CardType,
            GroupCode,
            Phone1,
            Phone2,
            E_Mail,
            Fax,
            AddID,
            RegNum,
            Notes,
            CreditLine,
            DebtLine,
            GroupNum,
            validFor,
            validFrom,
            validTo
        )
        VALUES
        (
            @CardCode,
            @CardName,
            @CardType,
            @GroupCode,
            @Phone1,
            @Phone2,
            @E_Mail,
            @Fax,
            @AddID,
            @RegNum,
            @Notes,
            @CreditLine,
            @DebtLine,
            @GroupNum,
            @validFor,
            @validFrom,
            @validTo
        );

        -- Return newly created RowID
        SELECT CAST(SCOPE_IDENTITY() AS INT) AS RowID;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_CompanyDetails_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CompanyDetails_Insert]
(
    @CompnyName NVARCHAR(200) = NULL,
    @Street NVARCHAR(200) = NULL,
    @StreetNo NVARCHAR(50) = NULL,
    @Block NVARCHAR(100) = NULL,
    @Building NVARCHAR(100) = NULL,
    @ZipCode NVARCHAR(20) = NULL,
    @City NVARCHAR(100) = NULL,
    @Country NVARCHAR(10) = NULL,
    @Phone1 NVARCHAR(50) = NULL,
    @Phone2 NVARCHAR(50) = NULL,
    @Fax NVARCHAR(50) = NULL,
    @E_Mail NVARCHAR(254) = NULL,
    @FreeZoneNo NVARCHAR(100) = NULL,
    @TaxIdNum NVARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if TaxIdNum already exists
    IF EXISTS
    (
        SELECT 1
        FROM [dbo].[CompanyDetails]
        WHERE [CompnyName] = @CompnyName
    )
    BEGIN
        -- Update existing record
        UPDATE [dbo].[CompanyDetails]
        SET
            CompnyName = @CompnyName,
            Street = @Street,
            StreetNo = @StreetNo,
            Block = @Block,
            Building = @Building,
            ZipCode = @ZipCode,
            City = @City,
            Country = @Country,
            Phone1 = @Phone1,
            Phone2 = @Phone2,
            Fax = @Fax,
            E_Mail = @E_Mail,
            FreeZoneNo = @FreeZoneNo,
            UpdatedDateTime = GETDATE()
        WHERE [CompnyName] = @CompnyName;

        -- Return existing TaxIdNum
        SELECT [CompnyName]
        FROM [dbo].[CompanyDetails]
        WHERE [CompnyName] = @CompnyName;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO [dbo].[CompanyDetails]
        (
            CompnyName,
            Street,
            StreetNo,
            Block,
            Building,
            ZipCode,
            City,
            Country,
            Phone1,
            Phone2,
            Fax,
            E_Mail,
            FreeZoneNo,
            TaxIdNum,
            CreatedDateTime,
            UpdatedDateTime
        )
        VALUES
        (
            @CompnyName,
            @Street,
            @StreetNo,
            @Block,
            @Building,
            @ZipCode,
            @City,
            @Country,
            @Phone1,
            @Phone2,
            @Fax,
            @E_Mail,
            @FreeZoneNo,
            @TaxIdNum,
            GETDATE(),
            GETDATE()
        );

        -- Return newly created TaxIdNum
        SELECT @CompnyName AS CompnyName;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Currency_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
  
CREATE PROCEDURE [dbo].[sp_Currency_Insert]
(
    @CurrCode NVARCHAR(10),
    @CurrName NVARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if CurrCode already exists
    IF EXISTS
    (
        SELECT 1
        FROM [dbo].[Currencies]
        WHERE CurrCode = @CurrCode
    )
    BEGIN
        -- Update existing record
        UPDATE [dbo].[Currencies]
        SET
            CurrName = @CurrName,
            UpdatedDateTime = GETDATE()
        WHERE CurrCode = @CurrCode;

        -- Return existing CurrCode
        SELECT CurrCode
        FROM [dbo].[Currencies]
        WHERE CurrCode = @CurrCode;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO [dbo].[Currencies]
        (
            CurrCode,
            CurrName,
            CreatedDateTime,
            UpdatedDateTime
        )
        VALUES
        (
            @CurrCode,
            @CurrName,
            GETDATE(),
            GETDATE()
        );

        -- Return newly created CurrCode
        SELECT @CurrCode AS CurrCode;
    END
END;
 
GO
/****** Object:  StoredProcedure [dbo].[sp_Delivery_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE   PROCEDURE [dbo].[sp_Delivery_Insert]
(
    @DocEntry INT = NULL,
    @DocNum INT = NULL,
    @DocType NVARCHAR(20) = NULL,
    @CANCELED CHAR(1) = NULL,
    @DocStatus CHAR(1) = NULL,
    @ObjType INT = NULL,
    @DocDate DATE = NULL,
    @DocDueDate DATE = NULL,
    @CardCode NVARCHAR(50) = NULL,
    @CarsName NVARCHAR(200) = NULL,
    @NumAtCard NVARCHAR(100) = NULL,
    @Address NVARCHAR(500) = NULL,
    @VatSum DECIMAL(19,6) = NULL,
    @VatSumFC DECIMAL(19,6) = NULL,
    @DiscSum DECIMAL(19,6) = NULL,
    @DiscSumFC DECIMAL(19,6) = NULL,
    @DocCur NVARCHAR(10) = NULL,
    @DocRate DECIMAL(19,6) = NULL,
    @DocTotal DECIMAL(19,6) = NULL,
    @DocTotalFC DECIMAL(19,6) = NULL,
    @GrosProfit DECIMAL(19,6) = NULL,
    @GrosProfFC DECIMAL(19,6) = NULL,
    @Comments NVARCHAR(1000) = NULL,
    @SlpCode INT = NULL,
    @TaxDate DATE = NULL,
    @UserSign INT = NULL,
    @TotalExpns DECIMAL(19,6) = NULL,
    @Project NVARCHAR(50) = NULL,
    @PayToCode NVARCHAR(100) = NULL,
    @VZ_BL NVARCHAR(100) = NULL,
    @VZ_PurTerm NVARCHAR(100) = NULL,
    @VZ_DelTerm NVARCHAR(100) = NULL,
    @VZ_PayTerm NVARCHAR(100) = NULL,
    @VZ_SPL_TERM NVARCHAR(100) = NULL,
    @GroupNum INT = NULL,
    @TrnspCode INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        -- =============================================
        -- UPDATE EXISTING DELIVERY
        -- =============================================
        IF @DocEntry IS NOT NULL
           AND EXISTS
           (
               SELECT 1
               FROM [dbo].[Delivery]
               WHERE [DocEntry] = @DocEntry
           )
        BEGIN

            UPDATE [dbo].[Delivery]
            SET
                [DocNum] = @DocNum,
                [DocType] = @DocType,
                [CANCELED] = @CANCELED,
                [DocStatus] = @DocStatus,
                [ObjType] = @ObjType,
                [DocDate] = @DocDate,
                [DocDueDate] = @DocDueDate,
                [CardCode] = @CardCode,
                [CarsName] = @CarsName,
                [NumAtCard] = @NumAtCard,
                [Address] = @Address,
                [VatSum] = @VatSum,
                [VatSumFC] = @VatSumFC,
                [DiscSum] = @DiscSum,
                [DiscSumFC] = @DiscSumFC,
                [DocCur] = @DocCur,
                [DocRate] = @DocRate,
                [DocTotal] = @DocTotal,
                [DocTotalFC] = @DocTotalFC,
                [GrosProfit] = @GrosProfit,
                [GrosProfFC] = @GrosProfFC,
                [Comments] = @Comments,
                [SlpCode] = @SlpCode,
                [TaxDate] = @TaxDate,
                [UserSign] = @UserSign,
                [TotalExpns] = @TotalExpns,
                [Project] = @Project,
                [PayToCode] = @PayToCode,
                [VZ_BL] = @VZ_BL,
                [VZ_PurTerm] = @VZ_PurTerm,
                [VZ_DelTerm] = @VZ_DelTerm,
                [VZ_PayTerm] = @VZ_PayTerm,
                [VZ_SPL_TERM] = @VZ_SPL_TERM,
                [GroupNum] = @GroupNum,
                [TrnspCode] = @TrnspCode,
                [UpdateDate] = SYSDATETIME()
            WHERE [DocEntry] = @DocEntry;

            -- Return updated DocEntry
            SELECT
                [DocEntry]
            FROM [dbo].[Delivery]
            WHERE [DocEntry] = @DocEntry;

            RETURN;
        END;


        -- =============================================
        -- INSERT NEW DELIVERY
        -- =============================================
        INSERT INTO [dbo].[Delivery]
        (
            [DocNum],
            [DocType],
            [CANCELED],
            [DocStatus],
            [ObjType],
            [DocDate],
            [DocDueDate],
            [CardCode],
            [CarsName],
            [NumAtCard],
            [Address],
            [VatSum],
            [VatSumFC],
            [DiscSum],
            [DiscSumFC],
            [DocCur],
            [DocRate],
            [DocTotal],
            [DocTotalFC],
            [GrosProfit],
            [GrosProfFC],
            [Comments],
            [SlpCode],
            [TaxDate],
            [UserSign],
            [TotalExpns],
            [Project],
            [PayToCode],
            [VZ_BL],
            [VZ_PurTerm],
            [VZ_DelTerm],
            [VZ_PayTerm],
            [VZ_SPL_TERM],
            [GroupNum],
            [TrnspCode]
        )
        VALUES
        (
            @DocNum,
            @DocType,
            @CANCELED,
            @DocStatus,
            @ObjType,
            @DocDate,
            @DocDueDate,
            @CardCode,
            @CarsName,
            @NumAtCard,
            @Address,
            @VatSum,
            @VatSumFC,
            @DiscSum,
            @DiscSumFC,
            @DocCur,
            @DocRate,
            @DocTotal,
            @DocTotalFC,
            @GrosProfit,
            @GrosProfFC,
            @Comments,
            @SlpCode,
            @TaxDate,
            @UserSign,
            @TotalExpns,
            @Project,
            @PayToCode,
            @VZ_BL,
            @VZ_PurTerm,
            @VZ_DelTerm,
            @VZ_PayTerm,
            @VZ_SPL_TERM,
            @GroupNum,
            @TrnspCode
        );

        -- =============================================
        -- RETURN NEWLY GENERATED DocEntry
        -- =============================================
        SELECT
            CAST(SCOPE_IDENTITY() AS INT) AS [DocEntry];

    END TRY
    BEGIN CATCH

        THROW;

    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delivery_Select]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create PROCEDURE [dbo].[sp_Delivery_Select]
(
    @Type INT,
    @StartDate DATE = NULL,
    @EndDate DATE = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
    (
        SELECT
            H.[DocEntry],
            H.[DocNum],
            H.[DocType],
            H.[CANCELED],
            H.[DocStatus],
            H.[ObjType],
            H.[DocDate],
            H.[DocDueDate],
            H.[CardCode],
            H.[CarsName],
            H.[NumAtCard],
            H.[Address],
            H.[VatSum],
            H.[VatSumFC],
            H.[DiscSum],
            H.[DiscSumFC],
            H.[DocCur],
            H.[DocRate],
            H.[DocTotal],
            H.[DocTotalFC],
            H.[GrosProfit],
            H.[GrosProfFC],
            H.[Comments],
            H.[SlpCode],
            H.[TaxDate],
            H.[UserSign],
            H.[TotalExpns],
            H.[Project],
            H.[PayToCode],
            H.[VZ_BL],
            H.[VZ_PurTerm],
            H.[VZ_DelTerm],
            H.[VZ_PayTerm],
            H.[VZ_SPL_TERM],
            H.[GroupNum],
            H.[TrnspCode],
            H.[CreateDate],
            H.[UpdateDate],

            -- ============================
            -- DETAILS
            -- ============================
            JSON_QUERY
            (
                (
                    SELECT
                        D.[LineNum],
                        D.[DocEntry],
                        D.[ItemCode],
                        D.[Dscription],
                        D.[Quantity],
                        D.[ShipDate],
                        D.[Price],
                        D.[DiscPrcnt],
                        D.[LineTotal],
                        D.[TotalFrgn],
                        D.[WhsCode],
                        D.[AcctCode],
                        D.[Project],
                        D.[OcrCode],
                        D.[CogsOcrCo2],
                        D.[CogsOcrCo3],
                        D.[CogsOcrCo4],
                        D.[CogsOcrCo5],
                        D.[GrssProfit],
                        D.[GrssProfFC],
                        D.[INMPrice],
                        D.[InvQty],
                        D.[LineStatus],
                        D.[BaseType],
                        D.[BaseEntry],
                        D.[BaseLine],
                        D.[PriceBefDi],
                        D.[UomCode],
                        D.[UomCode2],
                        D.[VatGroup],
                        D.[VatSum],
                        D.[VatSumFrgn],
                        D.[CreateDate],
                        D.[UpdateDate]

                    FROM [dbo].[Delivery_Details] D

                    WHERE D.[DocEntry] = H.[DocEntry]

                    FOR JSON PATH
                )
            ) AS Details,

            -- ============================
            -- BATCH
            -- ============================
            JSON_QUERY
            (
                (
                    SELECT
                        B.[DocEntry],
                        B.[BatchNum],
                        B.[ExpDate],
                        B.[PrdDate],
                        B.[InDate],
                        B.[SuppSerial],
                        B.[IntrSerial],
                        B.[Notes],
                        B.[CreateDate],
                        B.[UpdateDate]

                    FROM [dbo].[Delivery_Batch] B

                    WHERE B.[DocEntry] = H.[DocEntry]

                    FOR JSON PATH
                )
            ) AS Batch

        FROM [dbo].[Delivery] H

        WHERE
        (
            @Type = 1
        )
        OR
        (
            @Type = 2
            AND H.[DocDate] >= @StartDate
            AND H.[DocDate] < DATEADD(DAY, 1, @EndDate)
        )

        FOR JSON PATH

    ) AS JsonResult;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_HouseBankAccounts_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

 
CREATE   PROCEDURE [dbo].[sp_HouseBankAccounts_Insert]
(
    @BankCode NVARCHAR(50),
    @BankName NVARCHAR(200) = NULL
    
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if ItemCode already exists
    IF EXISTS
    (
        SELECT 1
        FROM [dbo].[HouseBankAccounts]
        WHERE BankCode = @BankCode
    )
    BEGIN
        -- Update existing record
        UPDATE  [dbo].[HouseBankAccounts]
        SET
            BankCode = @BankCode,
            BankName = @BankName,
           UpdatedDateTime = GETDATE()
        WHERE BankCode = @BankCode;

        -- Return existing ItemCode
        SELECT BankCode
        FROM [dbo].[HouseBankAccounts]
        WHERE BankCode = @BankCode;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO [dbo].[HouseBankAccounts]
        (BankCode,
           BankName ,
            CreatedDateTime,
            UpdatedDateTime
        )
        VALUES
        (
           @BankCode,@BankName,
            GETDATE(),
            GETDATE()
        );

        -- Return newly created ItemCode
        SELECT @BankCode AS BankCode;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_IncomingPayment_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create PROCEDURE [dbo].[sp_IncomingPayment_Insert]
(
    @DocEntry INT = NULL,
    @DocNum INT = NULL,
    @DocType NVARCHAR(20) = NULL,
    @Canceled CHAR(1) = NULL,
    @DocDate DATE = NULL,
    @DocDueDate DATE = NULL,
    @TaxDate DATE = NULL,
    @CardCode NVARCHAR(50) = NULL,
    @CardName NVARCHAR(200) = NULL,
    @CashAcct NVARCHAR(50) = NULL,
    @CashSum DECIMAL(19,6) = NULL,
    @CashSumFC DECIMAL(19,6) = NULL,
    @CheckAcct NVARCHAR(50) = NULL,
    @CheckSum DECIMAL(19,6) = NULL,
    @CheckSumFC DECIMAL(19,6) = NULL,
    @TrsfrAcct NVARCHAR(50) = NULL,
    @TrsfrSum DECIMAL(19,6) = NULL,
    @TrsfrSumFC DECIMAL(19,6) = NULL,
    @TrsfrDate DATE = NULL,
    @TrsfrRef NVARCHAR(100) = NULL,
    @PayNoDoc CHAR(1) = NULL,
    @NoDocSum DECIMAL(19,6) = NULL,
    @NoDocSumFC DECIMAL(19,6) = NULL,
    @BcgSum DECIMAL(19,6) = NULL,
    @BcgSumFC DECIMAL(19,6) = NULL,
    @DocCurr NVARCHAR(10) = NULL,
    @DocRate DECIMAL(19,6) = NULL,
    @DocTotal DECIMAL(19,6) = NULL,
    @DocTotalFC DECIMAL(19,6) = NULL,
    @CounterRef NVARCHAR(100) = NULL,
    @Comments NVARCHAR(1000) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        -- =============================================
        -- UPDATE EXISTING INCOMING PAYMENT
        -- =============================================
        IF @DocEntry IS NOT NULL
           AND EXISTS
           (
               SELECT 1
               FROM [dbo].[IncomingPayment]
               WHERE [DocEntry] = @DocEntry
           )
        BEGIN

            UPDATE [dbo].[IncomingPayment]
            SET
                [DocNum] = @DocNum,
                [DocType] = @DocType,
                [Canceled] = @Canceled,
                [DocDate] = @DocDate,
                [DocDueDate] = @DocDueDate,
                [TaxDate] = @TaxDate,
                [CardCode] = @CardCode,
                [CardName] = @CardName,
                [CashAcct] = @CashAcct,
                [CashSum] = @CashSum,
                [CashSumFC] = @CashSumFC,
                [CheckAcct] = @CheckAcct,
                [CheckSum] = @CheckSum,
                [CheckSumFC] = @CheckSumFC,
                [TrsfrAcct] = @TrsfrAcct,
                [TrsfrSum] = @TrsfrSum,
                [TrsfrSumFC] = @TrsfrSumFC,
                [TrsfrDate] = @TrsfrDate,
                [TrsfrRef] = @TrsfrRef,
                [PayNoDoc] = @PayNoDoc,
                [NoDocSum] = @NoDocSum,
                [NoDocSumFC] = @NoDocSumFC,
                [BcgSum] = @BcgSum,
                [BcgSumFC] = @BcgSumFC,
                [DocCurr] = @DocCurr,
                [DocRate] = @DocRate,
                [DocTotal] = @DocTotal,
                [DocTotalFC] = @DocTotalFC,
                [CounterRef] = @CounterRef,
                [Comments] = @Comments,
                [UpdatedDate] = SYSDATETIME()
            WHERE [DocEntry] = @DocEntry;

            -- Return updated DocEntry
            SELECT
                [DocEntry]
            FROM [dbo].[IncomingPayment]
            WHERE [DocEntry] = @DocEntry;

            RETURN;
        END;


        -- =============================================
        -- VALIDATE DOCENTRY FOR NEW INSERT
        -- =============================================
        IF @DocEntry IS NULL
        BEGIN
            THROW 50001, 'DocEntry is required when inserting a new Incoming Payment.', 1;
        END;


        -- =============================================
        -- INSERT NEW INCOMING PAYMENT
        -- =============================================
        INSERT INTO [dbo].[IncomingPayment]
        (
            [DocEntry],
            [DocNum],
            [DocType],
            [Canceled],
            [DocDate],
            [DocDueDate],
            [TaxDate],
            [CardCode],
            [CardName],
            [CashAcct],
            [CashSum],
            [CashSumFC],
            [CheckAcct],
            [CheckSum],
            [CheckSumFC],
            [TrsfrAcct],
            [TrsfrSum],
            [TrsfrSumFC],
            [TrsfrDate],
            [TrsfrRef],
            [PayNoDoc],
            [NoDocSum],
            [NoDocSumFC],
            [BcgSum],
            [BcgSumFC],
            [DocCurr],
            [DocRate],
            [DocTotal],
            [DocTotalFC],
            [CounterRef],
            [Comments]
        )
        VALUES
        (
            @DocEntry,
            @DocNum,
            @DocType,
            @Canceled,
            @DocDate,
            @DocDueDate,
            @TaxDate,
            @CardCode,
            @CardName,
            @CashAcct,
            @CashSum,
            @CashSumFC,
            @CheckAcct,
            @CheckSum,
            @CheckSumFC,
            @TrsfrAcct,
            @TrsfrSum,
            @TrsfrSumFC,
            @TrsfrDate,
            @TrsfrRef,
            @PayNoDoc,
            @NoDocSum,
            @NoDocSumFC,
            @BcgSum,
            @BcgSumFC,
            @DocCurr,
            @DocRate,
            @DocTotal,
            @DocTotalFC,
            @CounterRef,
            @Comments
        );


        -- =============================================
        -- RETURN NEWLY INSERTED DOCENTRY
        -- =============================================
        SELECT
            [DocEntry]
        FROM [dbo].[IncomingPayment]
        WHERE [DocEntry] = @DocEntry;


    END TRY
    BEGIN CATCH

        THROW;

    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_IncomingPayment_Select]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
  

 CREATE PROCEDURE [dbo].[sp_IncomingPayment_Select]
(
    @Type INT,
    @StartDate DATE = NULL,
    @EndDate DATE = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
(
    SELECT
        -- ============================================
        -- HEADER
        -- ============================================
       H.DocEntry,
    H.DocNum,
    H.DocType,
    H.Canceled,
    H.DocDate,
    H.DocDueDate,
    H.TaxDate,
    H.CardCode,
    H.CardName,
    H.CashAcct,
    H.CashSum,
    H.CashSumFC,
    H.CheckAcct,
    H.CheckSum,
    H.CheckSumFC,
    H.TrsfrAcct,
    H.TrsfrSum,
    H.TrsfrSumFC,
    H.TrsfrDate,
    H.TrsfrRef,
    H.PayNoDoc,
    H.NoDocSum,
    H.NoDocSumFC,
    H.BcgSum,
    H.BcgSumFC,
    H.DocCurr,
    H.DocRate,
    H.DocTotal,
    H.DocTotalFC,
    H.CounterRef,
    H.Comments,
    H.CreatedDate,
    H.UpdatedDate,

        -- ============================================
        -- DETAILS
        -- ============================================
        JSON_QUERY
        (
            (
                SELECT
                    D.DocNum,
					D.DocEntry,
					D.InvType,
					D.SumApplied,
					D.AppliedFC,
					D.CreatedDate,
					D.UpdatedDate

                FROM [dbo].[IncomingPayment_Details] D

                WHERE D.[DocEntry] = H.[DocEntry]

                FOR JSON PATH
            )
        ) AS [Details],

        -- ============================================
        -- BATCH
        -- ============================================
        JSON_QUERY
        (
            (
                SELECT
                    B.DocNum,
					B.DueDate,
					B.CheckNum,
					B.BankCode,
					B.Branch,
					B.AcctNum,
					B.Details,
					B.CheckSum,
					B.Currency,
					B.CheckAct,
					B.BnkActKey,
					B.ManualChk,
					B.CreatedDate,
					B.UpdatedDate

                FROM  [dbo].[IncomingPayment_details1] B

                WHERE B.[DocEntry] = H.[DocEntry]

                FOR JSON PATH
            )
        ) AS [Batch]

    FROM [dbo].[IncomingPayment] H

    WHERE
        (
            @Type = 1
        )
        OR
        (
            @Type = 2
            AND H.[DocDate] >= @StartDate
            AND H.[DocDate] < DATEADD(DAY, 1, @EndDate)
        )

    FOR JSON PATH

) AS [JsonResult];


END
GO
/****** Object:  StoredProcedure [dbo].[sp_InventoryTransfer_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_InventoryTransfer_Insert]
(
    @DocEntry INT = NULL,
    @DocNum INT = NULL,
    @ObjType NVARCHAR(20) = NULL,
    @CANCELED CHAR(1) = NULL,
    @DocStatus CHAR(1) = NULL,
    @DocDate DATE = NULL,
    @SlpCode INT = NULL,
    @FromWarehouse NVARCHAR(50) = NULL,
    @ToWarehouse NVARCHAR(50) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        -- =============================================
        -- UPDATE EXISTING INVENTORY TRANSFER
        -- =============================================
        IF @DocEntry IS NOT NULL
           AND EXISTS
           (
               SELECT 1
               FROM [dbo].[InventoryTransfer]
               WHERE [DocEntry] = @DocEntry
           )
        BEGIN

            UPDATE [dbo].[InventoryTransfer]
            SET
                [DocNum] = @DocNum,
                [ObjType] = @ObjType,
                [CANCELED] = @CANCELED,
                [DocStatus] = @DocStatus,
                [DocDate] = @DocDate,
                [SlpCode] = @SlpCode,
                [FromWarehouse] = @FromWarehouse,
                [ToWarehouse] = @ToWarehouse,
                [UpdatedDate] = SYSDATETIME()
            WHERE [DocEntry] = @DocEntry;

            -- Return updated DocEntry
            SELECT
                [DocEntry]
            FROM [dbo].[InventoryTransfer]
            WHERE [DocEntry] = @DocEntry;

            RETURN;
        END;


        -- =============================================
        -- VALIDATE DOCENTRY FOR NEW INSERT
        -- =============================================
        IF @DocEntry IS NULL
        BEGIN
            THROW 50001, 'DocEntry is required when inserting a new Inventory Transfer.', 1;
        END;


        -- =============================================
        -- INSERT NEW INVENTORY TRANSFER
        -- =============================================
        INSERT INTO [dbo].[InventoryTransfer]
        (
            [DocEntry],
            [DocNum],
            [ObjType],
            [CANCELED],
            [DocStatus],
            [DocDate],
            [SlpCode],
            [FromWarehouse],
            [ToWarehouse]
        )
        VALUES
        (
            @DocEntry,
            @DocNum,
            @ObjType,
            @CANCELED,
            @DocStatus,
            @DocDate,
            @SlpCode,
            @FromWarehouse,
            @ToWarehouse
        );


        -- =============================================
        -- RETURN NEWLY INSERTED DOCENTRY
        -- =============================================
        SELECT
            [DocEntry]
        FROM [dbo].[InventoryTransfer]
        WHERE [DocEntry] = @DocEntry;


    END TRY
    BEGIN CATCH

        THROW;

    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InventoryTransfer_Select]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  

 create PROCEDURE [dbo].[sp_InventoryTransfer_Select]
(
    @Type INT,
    @StartDate DATE = NULL,
    @EndDate DATE = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
(
    SELECT
        -- ============================================
        -- HEADER
        -- ============================================
    H.DocEntry,
    H.DocNum,
    H.ObjType,
    H.CANCELED,
    H.DocStatus,
    H.DocDate,
    H.SlpCode,
    H.FromWarehouse,
    H.ToWarehouse,
    H.CreatedDate,
    H.UpdatedDate,

        -- ============================================
        -- DETAILS
        -- ============================================
        JSON_QUERY
        (
            (
                SELECT
                   D.DocEntry,
					 D.LineNum,
					 D.ItemCode,
					 D.Quantity,
					 D.UomCode,
					 D.BaseType,
					 D.BaseEntry,
					 D.BaseLine,
					 D.CreatedDate,
					 D.UpdatedDate

                FROM [dbo].[InventoryTransfer_Details] D

                WHERE D.[DocEntry] = H.[DocEntry]

                FOR JSON PATH
            )
        ) AS [Details],

        -- ============================================
        -- BATCH
        -- ============================================
        JSON_QUERY
        (
            (
                SELECT
                   B.DocEntry,
					B.LineNum,
					B.BatchNum,
					B.ExpDate,
					B.PrdDate,
					B.CreatedDate,
					B.UpdatedDate

                FROM [dbo].[InventoryTransfer_Batch] B

                WHERE B.[DocEntry] = H.[DocEntry]

                FOR JSON PATH
            )
        ) AS [Batch]

    FROM [dbo].[InventoryTransfer] H

    WHERE
        (
            @Type = 1
        )
        OR
        (
            @Type = 2
            AND H.[DocDate] >= @StartDate
            AND H.[DocDate] < DATEADD(DAY, 1, @EndDate)
        )

    FOR JSON PATH

) AS [JsonResult];


END
GO
/****** Object:  StoredProcedure [dbo].[sp_ItemMaster_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE   PROCEDURE [dbo].[sp_ItemMaster_Insert]
(
    @ItemCode NVARCHAR(50),
    @ItemName NVARCHAR(200) = NULL,
    @FrgnName NVARCHAR(200) = NULL,
    @ItmsGrpCod INT = NULL,
    @PrchseItem CHAR(1) = NULL,
    @SellItem CHAR(1) = NULL,
    @InvntItem CHAR(1) = NULL,
    @UgpCode NVARCHAR(50) = NULL,
    @SalUnitMsr NVARCHAR(100) = NULL,
    @U_VZ_SubGroup NVARCHAR(100) = NULL,
    @U_VZ_SubGroup2 NVARCHAR(100) = NULL,
    @ManBtchNum CHAR(1) = NULL,
    @ManSerNum CHAR(1) = NULL,
    @validFor CHAR(1) = NULL,
    @validFrom DATE = NULL,
    @validTo DATE = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if ItemCode already exists
    IF EXISTS
    (
        SELECT 1
        FROM dbo.ItemMaster
        WHERE ItemCode = @ItemCode
    )
    BEGIN
        -- Update existing record
        UPDATE dbo.ItemMaster
        SET
            ItemName = @ItemName,
            FrgnName = @FrgnName,
            ItmsGrpCod = @ItmsGrpCod,
            PrchseItem = @PrchseItem,
            SellItem = @SellItem,
            InvntItem = @InvntItem,
            UgpCode = @UgpCode,
            SalUnitMsr = @SalUnitMsr,
            U_VZ_SubGroup = @U_VZ_SubGroup,
            U_VZ_SubGroup2 = @U_VZ_SubGroup2,
            ManBtchNum = @ManBtchNum,
            ManSerNum = @ManSerNum,
            validFor = @validFor,
            validFrom = @validFrom,
            validTo = @validTo,
            UpdatedDateTime = GETDATE()
        WHERE ItemCode = @ItemCode;

        -- Return existing ItemCode
        SELECT ItemCode
        FROM dbo.ItemMaster
        WHERE ItemCode = @ItemCode;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO dbo.ItemMaster
        (
            ItemCode,
            ItemName,
            FrgnName,
            ItmsGrpCod,
            PrchseItem,
            SellItem,
            InvntItem,
            UgpCode,
            SalUnitMsr,
            U_VZ_SubGroup,
            U_VZ_SubGroup2,
            ManBtchNum,
            ManSerNum,
            validFor,
            validFrom,
            validTo,
            CreatedDateTime,
            UpdatedDateTime
        )
        VALUES
        (
            @ItemCode,
            @ItemName,
            @FrgnName,
            @ItmsGrpCod,
            @PrchseItem,
            @SellItem,
            @InvntItem,
            @UgpCode,
            @SalUnitMsr,
            @U_VZ_SubGroup,
            @U_VZ_SubGroup2,
            @ManBtchNum,
            @ManSerNum,
            @validFor,
            @validFrom,
            @validTo,
            GETDATE(),
            GETDATE()
        );

        -- Return newly created ItemCode
        SELECT @ItemCode AS ItemCode;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PriceList_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[sp_PriceList_Insert]
(
    @ListNum INT,
    @ListName NVARCHAR(100) = NULL,
    @ValidFor CHAR(1) = NULL,
    @PrimCurr NVARCHAR(10) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if ListNum already exists
    IF EXISTS
    (
        SELECT 1
        FROM [dbo].[PriceList]
        WHERE ListNum = @ListNum
    )
    BEGIN
        -- Update existing record
        UPDATE [dbo].[PriceList]
        SET
            ListName = @ListName,
            ValidFor = @ValidFor,
            PrimCurr = @PrimCurr,
            UpdatedDateTime = GETDATE()
        WHERE ListNum = @ListNum;

        -- Return existing ListNum
        SELECT ListNum
        FROM [dbo].[PriceList]
        WHERE ListNum = @ListNum;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO [dbo].[PriceList]
        (
            ListNum,
            ListName,
            ValidFor,
            PrimCurr,
            CreatedDateTime,
            UpdatedDateTime
        )
        VALUES
        (
            @ListNum,
            @ListName,
            @ValidFor,
            @PrimCurr,
            GETDATE(),
            GETDATE()
        );

        -- Return newly created ListNum
        SELECT @ListNum AS ListNum;
    END
END; 
GO
/****** Object:  StoredProcedure [dbo].[sp_Return_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 
CREATE   PROCEDURE [dbo].[sp_Return_Insert]
(
    @DocEntry INT = NULL,
    @DocNum INT = NULL,
    @DocType NVARCHAR(20) = NULL,
    @CANCELED CHAR(1) = NULL,
    @DocStatus CHAR(1) = NULL,
    @ObjType INT = NULL,
    @DocDate DATE = NULL,
    @DocDueDate DATE = NULL,
    @CardCode NVARCHAR(50) = NULL,
    @CarsName NVARCHAR(200) = NULL,
    @NumAtCard NVARCHAR(100) = NULL,
    @Address NVARCHAR(500) = NULL,
    @VatSum DECIMAL(19,6) = NULL,
    @VatSumFC DECIMAL(19,6) = NULL,
    @DiscSum DECIMAL(19,6) = NULL,
    @DiscSumFC DECIMAL(19,6) = NULL,
    @DocCur NVARCHAR(10) = NULL,
    @DocRate DECIMAL(19,6) = NULL,
    @DocTotal DECIMAL(19,6) = NULL,
    @DocTotalFC DECIMAL(19,6) = NULL,
    @GrosProfit DECIMAL(19,6) = NULL,
    @GrosProfFC DECIMAL(19,6) = NULL,
    @Comments NVARCHAR(1000) = NULL,
    @SlpCode INT = NULL,
    @TaxDate DATE = NULL,
    @UserSign INT = NULL,
    @TotalExpns DECIMAL(19,6) = NULL,
    @Project NVARCHAR(50) = NULL,
    @PayToCode NVARCHAR(100) = NULL,
    @VZ_BL NVARCHAR(100) = NULL,
    @VZ_PurTerm NVARCHAR(100) = NULL,
    @VZ_DelTerm NVARCHAR(100) = NULL,
    @VZ_PayTerm NVARCHAR(100) = NULL,
    @VZ_SPL_TERM NVARCHAR(100) = NULL,
    @GroupNum INT = NULL,
    @TrnspCode INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        -- =============================================
        -- UPDATE EXISTING Return
        -- =============================================
        IF @DocEntry IS NOT NULL
           AND EXISTS
           (
               SELECT 1
               FROM [dbo].[Return]
               WHERE [DocEntry] = @DocEntry
           )
        BEGIN

            UPDATE [dbo].[Return]
            SET
                [DocNum] = @DocNum,
                [DocType] = @DocType,
                [CANCELED] = @CANCELED,
                [DocStatus] = @DocStatus,
                [ObjType] = @ObjType,
                [DocDate] = @DocDate,
                [DocDueDate] = @DocDueDate,
                [CardCode] = @CardCode,
                [CarsName] = @CarsName,
                [NumAtCard] = @NumAtCard,
                [Address] = @Address,
                [VatSum] = @VatSum,
                [VatSumFC] = @VatSumFC,
                [DiscSum] = @DiscSum,
                [DiscSumFC] = @DiscSumFC,
                [DocCur] = @DocCur,
                [DocRate] = @DocRate,
                [DocTotal] = @DocTotal,
                [DocTotalFC] = @DocTotalFC,
                [GrosProfit] = @GrosProfit,
                [GrosProfFC] = @GrosProfFC,
                [Comments] = @Comments,
                [SlpCode] = @SlpCode,
                [TaxDate] = @TaxDate,
                [UserSign] = @UserSign,
                [TotalExpns] = @TotalExpns,
                [Project] = @Project,
                [PayToCode] = @PayToCode,
                [VZ_BL] = @VZ_BL,
                [VZ_PurTerm] = @VZ_PurTerm,
                [VZ_DelTerm] = @VZ_DelTerm,
                [VZ_PayTerm] = @VZ_PayTerm,
                [VZ_SPL_TERM] = @VZ_SPL_TERM,
                [GroupNum] = @GroupNum,
                [TrnspCode] = @TrnspCode,
                [UpdateDate] = SYSDATETIME()
            WHERE [DocEntry] = @DocEntry;

            -- Return updated DocEntry
            SELECT
                [DocEntry]
            FROM [dbo].[Return]
            WHERE [DocEntry] = @DocEntry;

            RETURN;
        END;


        -- =============================================
        -- INSERT NEW Return
        -- =============================================
        INSERT INTO [dbo].[Return]
        (
            [DocNum],
            [DocType],
            [CANCELED],
            [DocStatus],
            [ObjType],
            [DocDate],
            [DocDueDate],
            [CardCode],
            [CarsName],
            [NumAtCard],
            [Address],
            [VatSum],
            [VatSumFC],
            [DiscSum],
            [DiscSumFC],
            [DocCur],
            [DocRate],
            [DocTotal],
            [DocTotalFC],
            [GrosProfit],
            [GrosProfFC],
            [Comments],
            [SlpCode],
            [TaxDate],
            [UserSign],
            [TotalExpns],
            [Project],
            [PayToCode],
            [VZ_BL],
            [VZ_PurTerm],
            [VZ_DelTerm],
            [VZ_PayTerm],
            [VZ_SPL_TERM],
            [GroupNum],
            [TrnspCode]
        )
        VALUES
        (
            @DocNum,
            @DocType,
            @CANCELED,
            @DocStatus,
            @ObjType,
            @DocDate,
            @DocDueDate,
            @CardCode,
            @CarsName,
            @NumAtCard,
            @Address,
            @VatSum,
            @VatSumFC,
            @DiscSum,
            @DiscSumFC,
            @DocCur,
            @DocRate,
            @DocTotal,
            @DocTotalFC,
            @GrosProfit,
            @GrosProfFC,
            @Comments,
            @SlpCode,
            @TaxDate,
            @UserSign,
            @TotalExpns,
            @Project,
            @PayToCode,
            @VZ_BL,
            @VZ_PurTerm,
            @VZ_DelTerm,
            @VZ_PayTerm,
            @VZ_SPL_TERM,
            @GroupNum,
            @TrnspCode
        );

        -- =============================================
        -- RETURN NEWLY GENERATED DocEntry
        -- =============================================
        SELECT
            CAST(SCOPE_IDENTITY() AS INT) AS [DocEntry];

    END TRY
    BEGIN CATCH

        THROW;

    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Return_Select]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 

 create PROCEDURE [dbo].[sp_Return_Select]
(
    @Type INT,
    @StartDate DATE = NULL,
    @EndDate DATE = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
    (
        SELECT
            H.[DocEntry],
            H.[DocNum],
            H.[DocType],
            H.[CANCELED],
            H.[DocStatus],
            H.[ObjType],
            H.[DocDate],
            H.[DocDueDate],
            H.[CardCode],
            H.[CarsName],
            H.[NumAtCard],
            H.[Address],
            H.[VatSum],
            H.[VatSumFC],
            H.[DiscSum],
            H.[DiscSumFC],
            H.[DocCur],
            H.[DocRate],
            H.[DocTotal],
            H.[DocTotalFC],
            H.[GrosProfit],
            H.[GrosProfFC],
            H.[Comments],
            H.[SlpCode],
            H.[TaxDate],
            H.[UserSign],
            H.[TotalExpns],
            H.[Project],
            H.[PayToCode],
            H.[VZ_BL],
            H.[VZ_PurTerm],
            H.[VZ_DelTerm],
            H.[VZ_PayTerm],
            H.[VZ_SPL_TERM],
            H.[GroupNum],
            H.[TrnspCode],
            H.[CreateDate],
            H.[UpdateDate],

            -- ============================
            -- DETAILS
            -- ============================
            JSON_QUERY
            (
                (
                    SELECT
                        D.[LineNum],
                        D.[DocEntry],
                        D.[ItemCode],
                        D.[Dscription],
                        D.[Quantity],
                        D.[ShipDate],
                        D.[Price],
                        D.[DiscPrcnt],
                        D.[LineTotal],
                        D.[TotalFrgn],
                        D.[WhsCode],
                        D.[AcctCode],
                        D.[Project],
                        D.[OcrCode],
                        D.[CogsOcrCo2],
                        D.[CogsOcrCo3],
                        D.[CogsOcrCo4],
                        D.[CogsOcrCo5],
                        D.[GrssProfit],
                        D.[GrssProfFC],
                        D.[INMPrice],
                        D.[InvQty],
                        D.[LineStatus],
                        D.[BaseType],
                        D.[BaseEntry],
                        D.[BaseLine],
                        D.[PriceBefDi],
                        D.[UomCode],
                        D.[UomCode2],
                        D.[VatGroup],
                        D.[VatSum],
                        D.[VatSumFrgn],
                        D.[CreateDate],
                        D.[UpdateDate]

                    FROM [dbo].[Return_Details] D

                    WHERE D.[DocEntry] = H.[DocEntry]

                    FOR JSON PATH
                )
            ) AS Details,

            -- ============================
            -- BATCH
            -- ============================
            JSON_QUERY
            (
                (
                    SELECT
                        B.[DocEntry],
                        B.[BatchNum],
                        B.[ExpDate],
                        B.[PrdDate],
                        B.[InDate],
                        B.[SuppSerial],
                        B.[IntrSerial],
                        B.[Notes],
                        B.[CreateDate],
                        B.[UpdateDate]

                    FROM [dbo].[Return_Batch] B

                    WHERE B.[DocEntry] = H.[DocEntry]

                    FOR JSON PATH
                )
            ) AS Batch

        FROM [dbo].[Return] H

        WHERE
        (
            @Type = 1
        )
        OR
        (
            @Type = 2
            AND H.[DocDate] >= @StartDate
            AND H.[DocDate] < DATEADD(DAY, 1, @EndDate)
        )

        FOR JSON PATH

    ) AS JsonResult;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesEmployees_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 

CREATE   PROCEDURE [dbo].[sp_SalesEmployees_Insert]
(
    @SlpCode INT,
    @SlpName NVARCHAR(100) = NULL,
    @Memo NVARCHAR(500) = NULL,
    @Active CHAR(1) = NULL,
    @Telephone NVARCHAR(50) = NULL,
    @Mobil NVARCHAR(50) = NULL,
    @Fax NVARCHAR(50) = NULL,
    @Email NVARCHAR(254) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if SlpCode already exists
    IF EXISTS
    (
        SELECT 1
        FROM dbo.SalesEmployees
        WHERE SlpCode = @SlpCode
    )
    BEGIN
        -- Update existing record
        UPDATE dbo.SalesEmployees
        SET
            SlpName = @SlpName,
            Memo = @Memo,
            Active = @Active,
            Telephone = @Telephone,
            Mobil = @Mobil,
            Fax = @Fax,
            Email = @Email,
            UpdatedDateTime = GETDATE()
        WHERE SlpCode = @SlpCode;

        -- Return existing SlpCode
        SELECT SlpCode
        FROM dbo.SalesEmployees
        WHERE SlpCode = @SlpCode;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO dbo.SalesEmployees
        (
            SlpCode,
            SlpName,
            Memo,
            Active,
            Telephone,
            Mobil,
            Fax,
            Email,
            CreatedDateTime,
            UpdatedDateTime
        )
        VALUES
        (
            @SlpCode,
            @SlpName,
            @Memo,
            @Active,
            @Telephone,
            @Mobil,
            @Fax,
            @Email,
            GETDATE(),
            GETDATE()
        );

        -- Return newly created SlpCode
        SELECT @SlpCode AS SlpCode;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesOrder_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE   PROCEDURE [dbo].[sp_SalesOrder_Insert]
(
    @DocEntry INT = NULL,
    @DocNum INT = NULL,
    @DocType NVARCHAR(20) = NULL,
    @CANCELED CHAR(1) = NULL,
    @DocStatus CHAR(1) = NULL,
    @ObjType INT = NULL,
    @DocDate DATE = NULL,
    @DocDueDate DATE = NULL,
    @CardCode NVARCHAR(50) = NULL,
    @CarsName NVARCHAR(200) = NULL,
    @NumAtCard NVARCHAR(100) = NULL,
    @Address NVARCHAR(500) = NULL,
    @VatSum DECIMAL(19,6) = NULL,
    @VatSumFC DECIMAL(19,6) = NULL,
    @DiscSum DECIMAL(19,6) = NULL,
    @DiscSumFC DECIMAL(19,6) = NULL,
    @DocCur NVARCHAR(10) = NULL,
    @DocRate DECIMAL(19,6) = NULL,
    @DocTotal DECIMAL(19,6) = NULL,
    @DocTotalFC DECIMAL(19,6) = NULL,
    @GrosProfit DECIMAL(19,6) = NULL,
    @GrosProfFC DECIMAL(19,6) = NULL,
    @Comments NVARCHAR(1000) = NULL,
    @SlpCode INT = NULL,
    @TaxDate DATE = NULL,
    @UserSign INT = NULL,
    @TotalExpns DECIMAL(19,6) = NULL,
    @Project NVARCHAR(50) = NULL,
    @PayToCode NVARCHAR(100) = NULL,
    @VZ_BL NVARCHAR(100) = NULL,
    @VZ_PurTerm NVARCHAR(100) = NULL,
    @VZ_DelTerm NVARCHAR(100) = NULL,
    @VZ_PayTerm NVARCHAR(100) = NULL,
    @VZ_SPL_TERM NVARCHAR(100) = NULL,
    @GroupNum INT = NULL,
    @TrnspCode INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        -- =============================================
        -- UPDATE EXISTING SALES ORDER
        -- =============================================
        IF @DocEntry IS NOT NULL
           AND EXISTS
           (
               SELECT 1
               FROM [dbo].[SalesOrder]
               WHERE [DocEntry] = @DocEntry
           )
        BEGIN

            UPDATE [dbo].[SalesOrder]
            SET
                [DocNum] = @DocNum,
                [DocType] = @DocType,
                [CANCELED] = @CANCELED,
                [DocStatus] = @DocStatus,
                [ObjType] = @ObjType,
                [DocDate] = @DocDate,
                [DocDueDate] = @DocDueDate,
                [CardCode] = @CardCode,
                [CarsName] = @CarsName,
                [NumAtCard] = @NumAtCard,
                [Address] = @Address,
                [VatSum] = @VatSum,
                [VatSumFC] = @VatSumFC,
                [DiscSum] = @DiscSum,
                [DiscSumFC] = @DiscSumFC,
                [DocCur] = @DocCur,
                [DocRate] = @DocRate,
                [DocTotal] = @DocTotal,
                [DocTotalFC] = @DocTotalFC,
                [GrosProfit] = @GrosProfit,
                [GrosProfFC] = @GrosProfFC,
                [Comments] = @Comments,
                [SlpCode] = @SlpCode,
                [TaxDate] = @TaxDate,
                [UserSign] = @UserSign,
                [TotalExpns] = @TotalExpns,
                [Project] = @Project,
                [PayToCode] = @PayToCode,
                [VZ_BL] = @VZ_BL,
                [VZ_PurTerm] = @VZ_PurTerm,
                [VZ_DelTerm] = @VZ_DelTerm,
                [VZ_PayTerm] = @VZ_PayTerm,
                [VZ_SPL_TERM] = @VZ_SPL_TERM,
                [GroupNum] = @GroupNum,
                [TrnspCode] = @TrnspCode,
                [UpdateDate] = SYSDATETIME()
            WHERE [DocEntry] = @DocEntry;

            -- Return updated DocEntry
            SELECT
                [DocEntry]
            FROM [dbo].[SalesOrder]
            WHERE [DocEntry] = @DocEntry;

            RETURN;
        END;


        -- =============================================
        -- INSERT NEW SALES ORDER
        -- =============================================
        INSERT INTO [dbo].[SalesOrder]
        (
            [DocNum],
            [DocType],
            [CANCELED],
            [DocStatus],
            [ObjType],
            [DocDate],
            [DocDueDate],
            [CardCode],
            [CarsName],
            [NumAtCard],
            [Address],
            [VatSum],
            [VatSumFC],
            [DiscSum],
            [DiscSumFC],
            [DocCur],
            [DocRate],
            [DocTotal],
            [DocTotalFC],
            [GrosProfit],
            [GrosProfFC],
            [Comments],
            [SlpCode],
            [TaxDate],
            [UserSign],
            [TotalExpns],
            [Project],
            [PayToCode],
            [VZ_BL],
            [VZ_PurTerm],
            [VZ_DelTerm],
            [VZ_PayTerm],
            [VZ_SPL_TERM],
            [GroupNum],
            [TrnspCode]
        )
        VALUES
        (
            @DocNum,
            @DocType,
            @CANCELED,
            @DocStatus,
            @ObjType,
            @DocDate,
            @DocDueDate,
            @CardCode,
            @CarsName,
            @NumAtCard,
            @Address,
            @VatSum,
            @VatSumFC,
            @DiscSum,
            @DiscSumFC,
            @DocCur,
            @DocRate,
            @DocTotal,
            @DocTotalFC,
            @GrosProfit,
            @GrosProfFC,
            @Comments,
            @SlpCode,
            @TaxDate,
            @UserSign,
            @TotalExpns,
            @Project,
            @PayToCode,
            @VZ_BL,
            @VZ_PurTerm,
            @VZ_DelTerm,
            @VZ_PayTerm,
            @VZ_SPL_TERM,
            @GroupNum,
            @TrnspCode
        );

        -- =============================================
        -- RETURN NEWLY GENERATED DocEntry
        -- =============================================
        SELECT CAST(SCOPE_IDENTITY() AS INT) AS [DocEntry];

    END TRY
    BEGIN CATCH

        THROW;

    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesOrder_Select]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_SalesOrder_Select]
(
    @Type INT,
    @StartDate DATE = NULL,
    @EndDate DATE = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
    (
        SELECT
            H.[DocEntry],
            H.[DocNum],
            H.[DocType],
            H.[CANCELED],
            H.[DocStatus],
            H.[ObjType],
            H.[DocDate],
            H.[DocDueDate],
            H.[CardCode],
            H.[CarsName],
            H.[NumAtCard],
            H.[Address],
            H.[VatSum],
            H.[VatSumFC],
            H.[DiscSum],
            H.[DiscSumFC],
            H.[DocCur],
            H.[DocRate],
            H.[DocTotal],
            H.[DocTotalFC],
            H.[GrosProfit],
            H.[GrosProfFC],
            H.[Comments],
            H.[SlpCode],
            H.[TaxDate],
            H.[UserSign],
            H.[TotalExpns],
            H.[Project],
            H.[PayToCode],
            H.[VZ_BL],
            H.[VZ_PurTerm],
            H.[VZ_DelTerm],
            H.[VZ_PayTerm],
            H.[VZ_SPL_TERM],
            H.[GroupNum],
            H.[TrnspCode],
            H.[InsertDate],
            H.[UpdateDate],

            JSON_QUERY
            (
                (
                    SELECT
                        D.[LineID],
                        D.[LineNum],
                        D.[DocEntry],
                        D.[ItemCode],
                        D.[Dscription],
                        D.[Quantity],
                        D.[ShipDate],
                        D.[Price],
                        D.[DiscPrcnt],
                        D.[LineTotal],
                        D.[TotalFrgn],
                        D.[WhsCode],
                        D.[AcctCode],
                        D.[Project],
                        D.[OcrCode],
                        D.[CogsOcrCo2],
                        D.[CogsOcrCo3],
                        D.[CogsOcrCo4],
                        D.[CogsOcrCo5],
                        D.[GrssProfit],
                        D.[GrssProfFC],
                        D.[INMPrice],
                        D.[InvQty],
                        D.[LineStatus],
                        D.[BaseType],
                        D.[BaseEntry],
                        D.[BaseLine],
                        D.[PriceBefDi],
                        D.[UomCode],
                        D.[UomCode2],
                        D.[VatGroup],
                        D.[VatSum],
                        D.[VatSumFrgn],
                        D.[BatchNum],
                        D.[ExpDate],
                        D.[PrdDate],
                        D.[InDate],
                        D.[SuppSerial],
                        D.[IntrSerial],
                        D.[Notes],
                        D.[InsertDate],
                        D.[UpdateDate]

                    FROM [dbo].[SalesOrder_Details] D

                    WHERE D.[DocEntry] = H.[DocEntry]

                    FOR JSON PATH
                )
            ) AS Details

        FROM [dbo].[SalesOrder] H

        WHERE
        (
            @Type = 1
        )
        OR
        (
            @Type = 2
            AND H.[DocDate] >= @StartDate
            AND H.[DocDate] < DATEADD(DAY, 1, @EndDate)
        )

        FOR JSON PATH
    ) AS JsonResult;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesQuotation_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE   PROCEDURE [dbo].[sp_SalesQuotation_Insert]
(
    @DocEntry INT,
    @DocNum INT,
    @DocType NVARCHAR(1) = NULL,
    @CANCELED NVARCHAR(1) = NULL,
    @DocStatus NVARCHAR(1) = NULL,
    @ObjType NVARCHAR(20) = NULL,
    @DocDate DATETIME2 = NULL,
    @DocDueDate DATETIME2 = NULL,
    @CardCode NVARCHAR(15) = NULL,
    @CarsName NVARCHAR(200) = NULL,
    @NumAtCard NVARCHAR(200) = NULL,
    @Address NVARCHAR(254) = NULL,
    @VatSum DECIMAL(21,6) = NULL,
    @VatSumFC DECIMAL(21,6) = NULL,
    @DiscSum DECIMAL(21,6) = NULL,
    @DiscSumFC DECIMAL(21,6) = NULL,
    @DocCur NVARCHAR(3) = NULL,
    @DocRate DECIMAL(21,6) = NULL,
    @DocTotal DECIMAL(21,6) = NULL,
    @DocTotalFC DECIMAL(21,6) = NULL,
    @GrosProfit DECIMAL(21,6) = NULL,
    @GrosProfFC DECIMAL(21,6) = NULL,
    @Comments NVARCHAR(254) = NULL,
    @SlpCode INT = NULL,
    @TaxDate DATETIME2 = NULL,
    @UserSign SMALLINT = NULL,
    @TotalExpns DECIMAL(21,6) = NULL,
    @Project NVARCHAR(20) = NULL,
    @PayToCode NVARCHAR(50) = NULL,
    @VZ_BL NVARCHAR(20) = NULL,
    @VZ_PurTerm NVARCHAR(250) = NULL,
    @VZ_DelTerm NVARCHAR(250) = NULL,
    @VZ_PayTerm NVARCHAR(250) = NULL,
    @VZ_SPL_TERM NVARCHAR(MAX) = NULL,
    @GroupNum SMALLINT = NULL,
    @TrnspCode SMALLINT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if DocEntry already exists
    IF EXISTS
    (
        SELECT 1
        FROM  [dbo].[SalesQuotation]
        WHERE [DocEntry] = @DocEntry
    )
    BEGIN
        -- Update existing record
        UPDATE  [dbo].[SalesQuotation]
        SET
            [DocNum] = @DocNum,
            [DocType] = @DocType,
            [CANCELED] = @CANCELED,
            [DocStatus] = @DocStatus,
            [ObjType] = @ObjType,
            [DocDate] = @DocDate,
            [DocDueDate] = @DocDueDate,
            [CardCode] = @CardCode,
            [CarsName] = @CarsName,
            [NumAtCard] = @NumAtCard,
            [Address] = @Address,
            [VatSum] = @VatSum,
            [VatSumFC] = @VatSumFC,
            [DiscSum] = @DiscSum,
            [DiscSumFC] = @DiscSumFC,
            [DocCur] = @DocCur,
            [DocRate] = @DocRate,
            [DocTotal] = @DocTotal,
            [DocTotalFC] = @DocTotalFC,
            [GrosProfit] = @GrosProfit,
            [GrosProfFC] = @GrosProfFC,
            [Comments] = @Comments,
            [SlpCode] = @SlpCode,
            [TaxDate] = @TaxDate,
            [UserSign] = @UserSign,
            [TotalExpns] = @TotalExpns,
            [Project] = @Project,
            [PayToCode] = @PayToCode,
            [VZ_BL] = @VZ_BL,
            [VZ_PurTerm] = @VZ_PurTerm,
            [VZ_DelTerm] = @VZ_DelTerm,
            [VZ_PayTerm] = @VZ_PayTerm,
            [VZ_SPL_TERM] = @VZ_SPL_TERM,
            [GroupNum] = @GroupNum,
            [TrnspCode] = @TrnspCode
        WHERE [DocEntry] = @DocEntry;

        -- Return existing DocEntry
        SELECT [DocEntry]
        FROM  [dbo].[SalesQuotation]
        WHERE [DocEntry] = @DocEntry;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO  [dbo].[SalesQuotation]
        (
            [DocEntry],
            [DocNum],
            [DocType],
            [CANCELED],
            [DocStatus],
            [ObjType],
            [DocDate],
            [DocDueDate],
            [CardCode],
            [CarsName],
            [NumAtCard],
            [Address],
            [VatSum],
            [VatSumFC],
            [DiscSum],
            [DiscSumFC],
            [DocCur],
            [DocRate],
            [DocTotal],
            [DocTotalFC],
            [GrosProfit],
            [GrosProfFC],
            [Comments],
            [SlpCode],
            [TaxDate],
            [UserSign],
            [TotalExpns],
            [Project],
            [PayToCode],
            [VZ_BL],
            [VZ_PurTerm],
            [VZ_DelTerm],
            [VZ_PayTerm],
            [VZ_SPL_TERM],
            [GroupNum],
            [TrnspCode]
        )
        VALUES
        (
            @DocEntry,
            @DocNum,
            @DocType,
            @CANCELED,
            @DocStatus,
            @ObjType,
            @DocDate,
            @DocDueDate,
            @CardCode,
            @CarsName,
            @NumAtCard,
            @Address,
            @VatSum,
            @VatSumFC,
            @DiscSum,
            @DiscSumFC,
            @DocCur,
            @DocRate,
            @DocTotal,
            @DocTotalFC,
            @GrosProfit,
            @GrosProfFC,
            @Comments,
            @SlpCode,
            @TaxDate,
            @UserSign,
            @TotalExpns,
            @Project,
            @PayToCode,
            @VZ_BL,
            @VZ_PurTerm,
            @VZ_DelTerm,
            @VZ_PayTerm,
            @VZ_SPL_TERM,
            @GroupNum,
            @TrnspCode
        );

        -- Return newly inserted DocEntry
        SELECT @DocEntry AS [DocEntry];
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesQuotation_Select]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SalesQuotation_Select]
(
    @Type INT,
    @StartDate DATE = NULL,
    @EndDate DATE = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

  SELECT
    (  SELECT
        H.[DocEntry],
        H.[DocNum],
        H.[DocType],
        H.[CANCELED],
        H.[DocStatus],
        H.[ObjType],
        H.[DocDate],
        H.[DocDueDate],
        H.[CardCode],
        H.[CarsName],
        H.[NumAtCard],
        H.[Address],
        H.[VatSum],
        H.[VatSumFC],
        H.[DiscSum],
        H.[DiscSumFC],
        H.[DocCur],
        H.[DocRate],
        H.[DocTotal],
        H.[DocTotalFC],
        H.[GrosProfit],
        H.[GrosProfFC],
        H.[Comments],
        H.[SlpCode],
        H.[TaxDate],
        H.[UserSign],
        H.[TotalExpns],
        H.[Project],
        H.[PayToCode],
        H.[VZ_BL],
        H.[VZ_PurTerm],
        H.[VZ_DelTerm],
        H.[VZ_PayTerm],
        H.[VZ_SPL_TERM],
        H.[GroupNum],
        H.[TrnspCode],
        H.[CreatedDateTime],
        H.[UpdatedDateTime],

        JSON_QUERY
        (
           (
                SELECT
			    	D.[DocEntry],
                    D.[LineID],
                    D.[LineNum],
                    D.[ItemCode],
                    D.[Dscription],
                    D.[Quantity],
                    D.[ShipDate],
                    D.[Price],
                    D.[DiscPrcnt],
                    D.[LineTotal],
                    D.[TotalFrgn],
                    D.[WhsCode],
                    D.[AcctCode],
                    D.[Project],
                    D.[OcrCode],
                    D.[CogsOcrCo2],
                    D.[CogsOcrCo3],
                    D.[CogsOcrCo4],
                    D.[CogsOcrCo5],
                    D.[GrssProfit],
                    D.[GrssProfFC],
                    D.[INMPrice],
                    D.[InvQty],
                    D.[LineStatus],
                    D.[BaseType],
                    D.[BaseEntry],
                    D.[BaseLine],
                    D.[PriceBefDi],
                    D.[UomCode],
                    D.[UomCode2],
                    D.[VatGroup],
                    D.[VatSum],
                    D.[VatSumFrgn],
                    D.[CreateDate],
                    D.[UpdateDate]
                FROM [dbo].[SalesQuotation_Details] D
                WHERE D.[DocEntry] = H.[DocEntry]
                FOR JSON PATH
            )
        ) AS Details

    FROM [dbo].[SalesQuotation] H

    WHERE
        (
            @Type = 1
        )
        OR
        (
            @Type = 2
            AND H.[DocDate] >= @StartDate
            AND H.[DocDate] < DATEADD(DAY, 1, @EndDate)
        )

    FOR JSON PATH) AS JsonResult;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UoMGroup_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE   PROCEDURE [dbo].[sp_UoMGroup_Insert]
(
    @UgpCode NVARCHAR(100),
    @UgpName NVARCHAR(100) = NULL,
    @BaseUom INT = NULL,
    @UomEntry INT = NULL,
    @BaseQty DECIMAL(19, 6) = NULL,
    @AltQty DECIMAL(19, 6) = NULL,
    @IsActive BIT = 1
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if UgpCode already exists
    IF EXISTS
    (
        SELECT 1
        FROM [dbo].[UoMGroup]
        WHERE UgpCode = @UgpCode
    )
    BEGIN
        -- Update existing record
        UPDATE [dbo].[UoMGroup]
        SET
            UgpName = @UgpName,
            BaseUom = @BaseUom,
            UomEntry = @UomEntry,
            BaseQty = @BaseQty,
            AltQty = @AltQty,
            IsActive = @IsActive,
            UpdatedDateTime = GETDATE()
        WHERE UgpCode = @UgpCode;

        -- Return existing UgpCode
        SELECT UgpCode
        FROM [dbo].[UoMGroup]
        WHERE UgpCode = @UgpCode;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO [dbo].[UoMGroup]
        (
            UgpCode,
            UgpName,
            BaseUom,
            UomEntry,
            BaseQty,
            AltQty,
            IsActive,
            CreatedDateTime,
            UpdatedDateTime
        )
        VALUES
        (
            @UgpCode,
            @UgpName,
            @BaseUom,
            @UomEntry,
            @BaseQty,
            @AltQty,
            @IsActive,
            GETDATE(),
            GETDATE()
        );

        -- Return newly created UgpCode
        SELECT @UgpCode AS UgpCode;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Users_Insert]
(
    @USER_CODE NVARCHAR(50),
    @U_NAME NVARCHAR(100) = NULL,
    @E_Mail NVARCHAR(254) = NULL,
    @Department NVARCHAR(100) = NULL,
    @PortNum nvarchar (150) = NULL,
    @Locked CHAR(1) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if USER_CODE already exists
    IF EXISTS
    (
        SELECT 1
        FROM [dbo].[Users]
        WHERE USER_CODE = @USER_CODE
    )
    BEGIN
        -- Update existing record
        UPDATE [dbo].[Users]
        SET
            U_NAME = @U_NAME,
            E_Mail = @E_Mail,
            Department = @Department,
            PortNum = @PortNum,
            Locked = @Locked,
            UpdatedDateTime = GETDATE()
        WHERE USER_CODE = @USER_CODE;

        -- Return existing USER_CODE
        SELECT USER_CODE
        FROM [dbo].[Users]
        WHERE USER_CODE = @USER_CODE;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO [dbo].[Users]
        (
            USER_CODE,
            U_NAME,
            E_Mail,
            Department,
            PortNum,
            Locked,
            CreatedDateTime,
            UpdatedDateTime
        )
        VALUES
        (
            @USER_CODE,
            @U_NAME,
            @E_Mail,
            @Department,
            @PortNum,
            @Locked,
            GETDATE(),
            GETDATE()
        );

        -- Return newly created USER_CODE
        SELECT @USER_CODE AS USER_CODE;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Warehouse_Insert]    Script Date: 10/7/2026 8:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 
CREATE   PROCEDURE [dbo].[sp_Warehouse_Insert]
(
    @WhsCode NVARCHAR(50),
    @WhsName NVARCHAR(200) = NULL,
    @Inactive NVARCHAR(5) = NULL,
    @U_VZ_Van NVARCHAR(200) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if WhsCode already exists
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Warehouse
        WHERE WhsCode = @WhsCode
    )
    BEGIN
        -- Update existing record
        UPDATE dbo.Warehouse
        SET
            WhsName = @WhsName,
            Inactive = @Inactive,
            U_VZ_Van = @U_VZ_Van,
            UpdatedDateTime = GETDATE()
        WHERE WhsCode = @WhsCode;

        -- Return existing WhsCode
        SELECT WhsCode
        FROM dbo.Warehouse
        WHERE WhsCode = @WhsCode;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO dbo.Warehouse
        (
            WhsCode,
            WhsName,
            Inactive,
            U_VZ_Van,
            CreatedDateTime,
            UpdatedDateTime
        )
        VALUES
        (
            @WhsCode,
            @WhsName,
            @Inactive,
            @U_VZ_Van,
            GETDATE(),
            GETDATE()
        );

        -- Return newly created WhsCode
        SELECT @WhsCode AS WhsCode;
    END
END;
GO
