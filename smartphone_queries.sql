SELECT * FROM smartphone where  1;
-- retrieving specific columns
select model,price,rating from smartphone;
-- alias
select os as 'operating_system' ,model,battery_capacity as mAH from smartphone;
-- modify column values
select model,rating/10 from smartphone;
-- add new column with constant value
select model,'smartphone' as 'type' from smartphone;
-- select distinct value from a column
select distinct(brand_name) as "All_Brands" from smartphone;
-- select distinct combinations
select distinct brand_name,processor_brand  from smartphone;
-- only want those data where brand name is samsung
select * from smartphone where brand_name='samsung';
-- only want those data where price is greater than 50k
select * from smartphone where price>50000;
-- only want those data where price is between 10k and 20k
select * from smartphone where price between 10000 and 20000;
-- only want those data where price < 25k & rating greater than 80
select * from smartphone where price<25000 and rating>80;
-- only want those data where brand name is samsung and ram>8gb
select * from smartphone where brand_name='samsung' and ram_capacity>8;
-- only want those data where brand name is samsung and has snapdragon processor
select * from smartphone where brand_name='samsung' and processor_brand='snapdragon';
-- find brands who sell phones whose price >50k
select distinct brand_name from smartphone where price>50000;
-- find the phones where processor brand is either snapdragon,exynos and bionic
select * from smartphone where processor_brand='snapdragon' or processor_brand='exynos' or processor_brand='bionic';
-- or
select * from smartphone where processor_brand in ('snapdragon','exynos','bionic');
-- rename/update the processor brand mediatek to dimenity
update smartphone
set processor_brand ='dimensity'
where processor_brand='mediatek';
-- delete all phones where price>20k
delete from smartphone where price>20000;
-- find the most expensive phone 
select * from smartphone where price=
(select max(price) from smartphone);
-- find the most expensive samsung phone
 select * from smartphone where brand_name='samsung' and price=
(select max(price) from smartphone where brand_name='samsung');
-- find the avg rating of apple phone
select avg(rating) from smartphone where brand_name='apple';
-- find the number of the phone of apple brand
select count(*) from smartphone where brand_name='oneplus';
-- find the number of the unique brands
select count(distinct brand_name) from smartphone;
-- find the standard deviation of screen size
select std(screen_size) from smartphone;
-- find top 5 samsung phones with biggest screen size
select * from smartphone where brand_name='samsung'
order by screen_size desc limit 5;
-- sort all the phone in decending order of number of total cameras
select model,num_rear_cameras+num_front_cameras as 'total_cameras' from smartphone
order by total_cameras desc;
-- sort all the phone on the basis of ppi in decreasing order
select model,sqrt(resolution_width*resolution_width+resolution_height*resolution_height)/screen_size as ppi from smartphone
order by ppi desc;
-- find the price with 2nd largest battery
select model,battery_capacity,price from smartphone
order by battery_capacity desc limit 1,1;
-- find the name and rating of the worst rated apple phones
select model,rating from smartphone
order by rating asc limit 1;
-- sort alphabetically and then on the basis of rating in decending order
select * from smartphone
order by brand_name asc ,rating desc;
-- group smartphones by brand and get the count,avg price,max rating,avg screen size and avg battery capacity
select brand_name,count(*),round(avg(price)) as 'Average_Price', max(rating),round(avg(screen_size)) as 'Average_Screen_Size',round(avg(battery_capacity)) as 'Battery_Capacity' from smartphone
group by brand_name;
-- group phones by wheather they have nfc and get the avg price and avg rating
select has_nfc,round(avg(price)) as 'Average_Price',round(avg(rating)) as 'Average_Rating' from smartphone
group by has_nfc;
-- group phones by wheather they extended memory available and get the avg price and avg rating
select extended_memory_available,round(avg(price)) as 'Average_Price',round(avg(rating)) as 'Average_Rating' from smartphone
group by extended_memory_available;
-- group phones by wheather the brand and processor brand and get the count of the models and the avg primary camera resolution
select brand_name,processor_brand,count(*),round(avg(primary_camera_rear)) as 'avg primary camera resolution' from smartphone
group by brand_name,processor_brand;
-- select top 5 most expensive brands
select brand_name,round(avg(price)) as 'Average_Price' from smartphone
group by brand_name
order by Average_Price desc limit 5;
-- which brand makes the smallest screen smartphones
select brand_name ,round(min(screen_size)) as 'Average_Screen_Size' from smartphone
group by brand_name
order by 'Average_Screen_Size' limit 1;
-- group phones by wheather the brand and find the brand with the heighest number of model that have both NFC and IR Blaster
select brand_name,count(*) from smartphone where has_nfc='True' and has_ir_blaster='True'
group by brand_name
order by count(*) desc limit 1;
-- find all samsung 5g enabled smartphones and find out the avg price or NFC & NON NFC phones 
select has_nfc,round(avg(price)) as 'Average_Price' from smartphone where has_5g='True'
group by has_nfc;
-- find the avg rating of smartphone brands which has more than 20 phones
select brand_name,count(*) as 'Number_Phones', round(avg(rating)) as 'Average_rating' from smartphone
group by brand_name
having Number_Phones>20;
-- find the top 3 brands with the heightest avg ram that have a refresh rate of at least 90 hz and fast charging available and don't conider brands which have less than 10 phones
select brand_name,count(*) as 'Number_Phones', avg(ram_capacity) as 'Average_ram' from smartphone where refresh_rate>90 and fast_charging_available=1
group by brand_name
having Number_Phones>10
order by Average_ram desc limit 3;
-- find the avg price of all the phone brands with avg rating greater than 70 and num_phones more than 10 among all 5g enabled phones
select brand_name,round(avg(price)) as 'Average_Price' from smartphone where has_5g='True'
group by brand_name
having count(*)>10 and avg(rating)>70;
