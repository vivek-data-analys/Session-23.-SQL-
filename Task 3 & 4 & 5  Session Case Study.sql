create database zomato_cost ; 
use zomato_cost ; 

create table resturants ( 
resturant_id int primary key , 
resturant_name varchar (100) , 
location varchar (100) , 
cuisine varchar (100) , 
rating decimal (2,1) , 
votes int , 
cost_for_two int , 
restaurant_type varchar (100) ) ; 

insert into resturants (resturant_id , resturant_name , location,cuisine,rating , votes,cost_for_two,restaurant_type )
values 

(1, 'Truffles', 'Koramangala', 'American, Burgers', 4.7, 15000, 900, 'Casual Dining'),
(2, 'Meghana Foods', 'Indiranagar', 'Biryani, Andhra', 4.4, 12000, 600, 'Casual Dining'),
(3, 'Toit', 'Indiranagar', 'Continental, Italian', 4.5, 10000, 1800, 'Pub'),
(4, 'MTR', 'Lalbagh Road', 'South Indian', 4.3, 8000, 400, 'Casual Dining'),
(5, 'CTR', 'Malleshwaram', 'South Indian', 4.4, 6500, 300, 'Quick Bites'),
(6, 'Social', 'Church Street', 'Continental, North Indian', 4.2, 5000, 1500, 'Casual Dining'),
(7, 'Theobroma', 'Koramangala', 'Bakery, Desserts', 4.3, 3000, 400, 'Bakery'),
(8, 'Corner House', 'Residency Road', 'Ice Cream, Desserts', 4.4, 7000, 350, 'Dessert Parlor'),
(9, 'Udupi Upahar', 'Jayanagar', 'South Indian', 3.9, 900, 250, 'Quick Bites'),
(10, 'Barbeque Nation', 'Marathahalli', 'BBQ, North Indian', 4.2, 6000, 1600, 'Casual Dining'),
(11, 'A2B', 'Whitefield', 'South Indian, Chinese', 3.8, 1200, 500, 'Casual Dining'),
(12, 'Pizza Bakery', 'Indiranagar', 'Italian, Pizza', 4.3, 4500, 1000, 'Cafe'),
(13, 'Jalsa', 'Banashankari', 'North Indian, Mughlai', 4.1, 775, 800, 'Casual Dining'),
(14, 'Empire Restaurant', 'Brigade Road', 'North Indian, Biryani', 4.0, 2500, 700, 'Quick Bites'),
(15, 'Cafe Coffee Day', 'Indiranagar', 'Coffee, Beverages', 3.8, 1800, 400, 'Cafe');


select 
restaurant_type , 
round(avg(cost_for_two) , 0) as average_cost 
from resturants
group by restaurant_type 
order by average_cost desc ; 


----- Task 4 ------- 

select 
rating , 
sum(votes) as votes 
from resturants 
where rating < 4.0
group by rating 
having votes > 200 ; 


----- Task 5 ---- 

select 
resturant_id , 
resturant_name , 
location , 
cost_for_two ,
case 
   when cost_for_two < 500 then 'budget' 
   when cost_for_two between 500 and 1500 then 'mid-range'
   when cost_for_two > 1500 then 'premium'
   end as market_category 
from resturants 
order by cost_for_two asc ; 
   
   