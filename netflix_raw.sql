-- after loading the data into sql using the "replace" the datatypes will be default & it takes max memory for each datatype for each column in table
--to avoid this we will drop that table after taking the table defination query, then we will change the datatypes, memory ccordingly & create a new table with same name 
-- and run the connection code once more to "append " the data from df to sql 



create TABLE [dbo].[netflix_raw](
	[show_id] [varchar](10) primary key,
	[type] [varchar](10) NULL,
	[title] [nvarchar](200) NULL,
	[director] [varchar](250) NULL,
	[cast] [varchar](1000) NULL,
	[country] [varchar](150) NULL,
	[date_added] [varchar](20) NULL,
	[release_year] [int] NULL,
	[rating] [varchar](10) NULL,
	[duration] [varchar](10) NULL,
	[listed_in] [varchar](100) NULL,
	[description] [varchar](500) NULL
) 
