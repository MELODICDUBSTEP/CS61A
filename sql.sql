create table cities as
    select 38 as latitude, 122 as longitude, "Berkeley" as name union

select "west coast" as region, name from cities where longitutde >= 115 union

create table parents as
select "abraham" as parent, "barack" as child union
select "abraham", "clinton" union
select "delano" , "herbert";

select child from parents where parent = "abraham"

select child from parents order by parent

