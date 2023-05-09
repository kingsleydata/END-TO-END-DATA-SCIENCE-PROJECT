select *
from defi_lama_transaction_details

create table category_details(
category_id serial primary key,
category text)

create table defiproductname(
defi_id serial primary key,
category_id serial,
defillamaID INTEGER,
name text,
constraint fk
foreign key (category_id) references category_details (category_id)
on delete set null on update cascade)


create table Protocol_details(
Protocol_id serial primary key, 
parentProtocol text)

create table version_key_details(
versionkeyid serial primary key,
versionkey text)


create table transaction_details(
transaction_details_id serial primary key,
defi_id serial,
Protocol_id serial,
versionkeyid serial,
dailyFees numeric,
dailySupplySideRevenue numeric,
change_1m double precision,
change_1d double precision,
change_7d double precision,
constraint fk_defi foreign key (defi_id) 
references defiproductname (defi_id) on delete set null
on update cascade,
constraint fk_Protocol foreign key (Protocol_id) references 
Protocol_details (Protocol_id) on delete set null
on update cascade,
constraint fk_version_key foreign key (versionkeyid) references 
version_key_details (versionkeyid)
on delete set null on update cascade)





