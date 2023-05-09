select ca.category, dpn.name, td.dailySupplySideRevenue,
max(td.dailySupplySideRevenue) as max_rev
from "category_details" ca
left join "defiproductname" dpn
on ca."category_id" = dpn."category_id"
left join "transaction_details" td
on dpn."defi_id" = td."defi_id"
where  td.dailySupplySideRevenue is not null
and "category" != 'Liquid Staking'
group by ca.category, dpn.name, td.dailySupplySideRevenue
order by max_rev desc




select ca.category, dpn.name, td.dailySupplySideRevenue,
max(td.dailySupplySideRevenue) as max_rev
from "category_details" ca
left join "defiproductname" dpn
on ca."category_id" = dpn."category_id"
left join "transaction_details" td
on dpn."defi_id" = td."defi_id"
where  td.dailySupplySideRevenue is not null
group by ca.category, dpn.name, td.dailySupplySideRevenue
order by max_rev desc

--Count category
select category, count(category) as category_count
from "category_details" 
group by category
order by category_count desc


--
select ca.category, sum(td.dailySupplySideRevenue) as sum_rev
from "category_details" ca
left join "defiproductname" dpn
on ca."category_id" = dpn."category_id"
left join "transaction_details" td
on dpn."defi_id" = td."defi_id"
where  td.dailySupplySideRevenue is not null
group by ca.category, td.dailySupplySideRevenue
order by sum_rev desc




--Ranking different crypto sectors based on most profitable by daily supply 
--side revenue
select distinct category, sum(td.dailySupplySideRevenue) as sum_rev
from "category_details" ca
left join "defiproductname" dpn
on ca."category_id" = dpn."category_id"
left join "transaction_details" td
on dpn."defi_id" = td."defi_id"
where  td.dailySupplySideRevenue is not null
group by category
order by sum_rev desc

select *
from transaction_details

select *
from defi_lama_transaction_details


select corr(dailyfees, dailysupplysiderevenue)
from  transaction_details

select *
from public.defiproductname

--Top 5 most profitable defi platforms for the day in descending order
select dpn.name, td.dailyfees as transaction_fees
from public.defiproductname dpn
join transaction_details td
on dpn.defi_id = td.defi_id
where td.dailyfees is not null
order by transaction_fees desc
limit 5


select dpn.name as name, ca.category as category, pp.parentprotocol as parent,
sum(dailyfees) as total_dailyfees
from transaction_details td
inner join defiproductname dpn 
on td.defi_id = dpn.defi_id
inner join category_details ca
on dpn.category_id = ca.category_id
inner join protocol_details pp
on td.protocol_id = pp.protocol_id
where dailyfees is not null
group by name, category, parent
order by total_dailyfees desc





