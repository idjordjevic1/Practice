USE [MS3]                                                                                                                            
GO                                                                                                                                   
                                                                                                                                     
/****** Object:  Table [dbo].[Identification]    Script Date: 5/3/2019 2:26:40 PM ******/                                            
SET ANSI_NULLS ON                                                                                                                    
GO                                                                                                                                   
                                                                                                                                     
SET QUOTED_IDENTIFIER ON                                                                                                             
GO                                                                                                                                   
                                                                                                                                     
CREATE TABLE [dbo].[Identification](                                                                                                 
	[IdentificationID] [bigint] IDENTITY(1,1) NOT NULL,                                                                                
	[FirstName] [varchar](50) NOT NULL,                                                                                                
	[LastName] [varchar](50) NOT NULL,                                                                                                 
	[DOB] [date] NULL,                                                                                                                 
	[Gender] [varchar](1) NULL,                                                                                                        
	[Title] [varchar](50) NULL,                                                                                                        
 CONSTRAINT [PK_RawPayloadID] PRIMARY KEY CLUSTERED                                                                                  
(                                                                                                                                    
	[IdentificationID] ASC                                                                                                             
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]                                                                                                                       
GO                                                                                                                                   
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
USE [MS3]
GO

/****** Object:  Table [dbo].[Address]    Script Date: 5/3/2019 2:26:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Address](
	[AddressID] [bigint] IDENTITY(1,1) NOT NULL,
	[IdentificationID] [bigint] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[number]  [varchar](50) NULL,
	[street] [varchar](50) NULL,
	[Unit] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[zipcode] [varchar](10) NULL,
 CONSTRAINT [PK_AddressID] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Address]  WITH NOCHECK ADD  CONSTRAINT [fk_IdentificationID] FOREIGN KEY([IdentificationID])
REFERENCES [dbo].[Identification] ([IdentificationID])
GO

ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [fk_IdentificationID]
GO




                                                                                                                                     
USE [MS3]
GO

/****** Object:  Table [dbo].[Communication]    Script Date: 5/3/2019 2:26:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Communication](
	[CommunicationID] [bigint] IDENTITY(1,1) NOT NULL,
	[IdentificationID] [bigint] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[value]  [varchar](50) NULL,
	[preferred] [bit] NULL,
 CONSTRAINT [PK_CommunicationID] PRIMARY KEY CLUSTERED 
(
	[CommunicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Communication]  WITH NOCHECK ADD  CONSTRAINT [fk_IdentificationID1] FOREIGN KEY([IdentificationID])
REFERENCES [dbo].[Identification] ([IdentificationID])
GO

ALTER TABLE [dbo].[Communication] CHECK CONSTRAINT [fk_IdentificationID1]
GO


