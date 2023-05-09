select *
from defi_lama_transaction_details

insert into category_details ("category")
select "category"
from defi_lama_transaction_details

select *
from defiproductname

insert into defiproductname ("defillamaid", name)
select "defillamaId" , name
from defi_lama_transaction_details


select ca.category, dpn.name
from "category_details" ca
inner join "defiproductname" dpn
on ca."category_id" = dpn."category_id"

insert into Protocol_details (parentProtocol)
select "parentProtocol"
from defi_lama_transaction_details


insert into version_key_details (versionkey)
select "versionKey"
from defi_lama_transaction_details


insert into transaction_details
(dailyfees, dailySupplySideRevenue, change_1m, change_1d, change_7d)
select "dailySupplySideRevenue", "change_1m", "change_1d", "change_7d"
from defi_lama_transaction_details


insert into transaction_details
(dailyFees)
select "dailyFees"
from defi_lama_transaction_details

select *
from transaction_details

truncate table transaction_details

drop table category_details
drop table defiproductname
drop table Protocol_details
drop table version_key_details

insert into transaction_details
(dailyfees, dailySupplySideRevenue, change_1m, change_1d, change_7d)
select "dailyFees", "dailySupplySideRevenue", "change_1m", "change_1d", "change_7d"
from defi_lama_transaction_details


drop table transaction_details