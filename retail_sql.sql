select *
from retail_data;

#Find the total number of records present in the dataset.
select count(invoice_no)
from retail_data;

#Display the first 10 records and check the structure and data types of all columns.
select *
from retail_data
limit 10;
describe retail_data; #discribe data type

#Identify and count missing (NULL or blank) values in each column.
select 
sum(invoice_no is null or trim(invoice_no)  = '') AS Missing_Invoice_No,
sum(Stock_code is null or trim(stock_code)  = '') AS Missing_stock_code,
sum(description is null or trim(description)  = '') AS Missing_description,
sum(quantity is null or trim(quantity)  = '') AS Missing_quantity,
sum(Invoice_Date is null or trim(Invoice_Date)  = '') AS Missing_Invoice_Date,
sum(Unit_Price is null or trim(Unit_Price)  = '') AS Missing_Unit_Price,
sum(Customer_ID is null or trim(customer_id)  = '') AS Missing_customer_id,
sum(country is null or trim(country)  = '') AS Missing_country
from retail_data;


#replace the string.
select *, replace(stock_code,'POST','not avilable')
from retail_data;

#Find records with extra spaces in Description and Country columns.

