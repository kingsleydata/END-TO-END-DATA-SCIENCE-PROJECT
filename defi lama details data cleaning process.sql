select *
from defi_lama_transaction_details


select distinct("parentProtocol")
from defi_lama_transaction_details

SELECT replace( "parentProtocol", 'parent#', '')
from defi_lama_transaction_details

update defi_lama_transaction_details
set "parentProtocol" = replace("parentProtocol", 'parent#', '')

select *
from defi_lama_transaction_details


select round(("dailyFees"),2)
from defi_lama_transaction_details
where "dailyFees" is not null


select round(("dailyFees"::decimal),2)
from defi_lama_transaction_details

alter table defi_lama_transaction_details
alter column "dailyFees" type decimal
using "dailyFees"::decimal

select round("dailyFees",2)
from defi_lama_transaction_details

update defi_lama_transaction_details
set "dailyFees" = round("dailyFees",2)

select round(("dailySupplySideRevenue"::decimal),2)
from defi_lama_transaction_details

alter table defi_lama_transaction_details
alter column "dailySupplySideRevenue" type decimal
using "dailySupplySideRevenue"::decimal

update defi_lama_transaction_details
set "dailySupplySideRevenue" = round("dailySupplySideRevenue",2)

select *
from defi_lama_transaction_details


update defi_lama_transaction_details
set "parentProtocol" = 'Unknown Parent Protocol'
where "parentProtocol" is null


update defi_lama_transaction_details
set "versionKey" = 'Unknown version key'
where "versionKey" is null


alter table defi_lama_transaction_details
alter column "defillamaId" type integer
using "defillamaId"::integer









