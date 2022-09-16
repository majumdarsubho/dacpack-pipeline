CREATE TABLE [dbo].[Persondetails] (
    [Personid]     INT           NOT NULL,
    [Firstname]    NCHAR (30)    NOT NULL,
    [Lastname]     NCHAR (30)    NOT NULL,
    [ModifiedDate] SMALLDATETIME NULL
);

GO
CREATE TABLE [dbo].[PurchaseOrderDetail] (
    [PurchaseOrderID] INT        NOT NULL,
    [LineNumber]      SMALLINT   NOT NULL,
    [ProductID]       INT        NULL,
    [UnitPrice]       MONEY      NULL,
    [OrderQty]        SMALLINT   NULL,
    [ReceivedQty]     FLOAT (53) NULL,
    [RejectedQty]     FLOAT (53) NULL,
    [DueDate]         DATETIME   NULL
);

GO
CREATE TABLE [dbo].[user_details] (
    [user_id]    INT           NOT NULL,
    [username]   VARCHAR (255) DEFAULT (NULL) NULL,
    [first_name] VARCHAR (50)  DEFAULT (NULL) NULL,
    [last_name]  VARCHAR (50)  DEFAULT (NULL) NULL,
    [gender]     VARCHAR (10)  DEFAULT (NULL) NULL,
    [password]   VARCHAR (50)  DEFAULT (NULL) NULL,
    [status]     INT           DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([user_id] ASC)
);

GO
CREATE LOGIN [admin]
    WITH PASSWORD = N'{.sy9>gh#jdmnio|x7lRv|qbmsFT7_&#$!~<olnepr7ouj|d';

GO
CREATE USER [admin] FOR LOGIN [admin];

GO
ALTER ROLE [db_owner] ADD MEMBER [admin];

GO
DENY BACKUP DATABASE TO [admin];

GO
DENY BACKUP LOG TO [admin];

GO
GRANT CONNECT TO [admin];

GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO PUBLIC;

GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO PUBLIC;

GO
