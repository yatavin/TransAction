﻿CREATE TABLE [dbo].[TRA_USER_ACTIVITY] (
    [USER_ACTIVITY_ID]          INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPTION]        TEXT NOT NULL,
    [HOURS]       FLOAT NOT NULL,
    [USER_ID]      INT            NOT NULL,
    [ACTIVITY_ID] INT            NOT NULL,
	[EFFECTIVE_START_DATE] DATETIME NULL, 
	[EFFECTIVE_END_DATE] DATETIME NULL, 
	[CREATED_BY_USER] VARCHAR(255) NULL, 
	[CREATED_BY_DATE] DATETIME NULL, 
	[LAST_UPDATED_BY_USER] VARCHAR(255) NULL, 
	[LAST_UPDATED_BY_DATE] DATETIME NULL,
    CONSTRAINT [PK_USER_ACTIVITY] PRIMARY KEY CLUSTERED ([USER_ACTIVITY_ID] ASC),
    CONSTRAINT [FK_USER_ACTIVITY_ACTIVITY] FOREIGN KEY ([ACTIVITY_ID]) REFERENCES [dbo].[TRA_ACTIVITY] ([ACTIVITY_ID]),
    CONSTRAINT [FK_USER_ACTIVITY_USER] FOREIGN KEY ([USER_ID]) REFERENCES [dbo].[TRA_USER] ([USER_ID])
);


GO
CREATE NONCLUSTERED INDEX [IX_FK_USER_ACTIVITY_USER]
    ON [dbo].[TRA_USER_ACTIVITY]([USER_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_FK_USER_ACTIVITY_ACTIVITY]
    ON [dbo].[TRA_USER_ACTIVITY]([ACTIVITY_ID] ASC);

