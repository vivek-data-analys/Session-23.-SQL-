create database zomato_bangalore ; 
use zomato_bangalore ; 

create table resturants ( 
resturant_id int primary key , 
resturant_name varchar (100) , 
location varchar (100) , 
cuisine varchar (100) , 
rating decimal (2,1) , 
votes int , 
cost_for_two int , 
online_order varchar (100) , 
book_table varchar (100) ) ; 

INSERT INTO resturants(resturant_id,resturant_name,location,cuisine,rating,votes,cost_for_two,online_order,book_table ) 
values 
(1, 'Jalsa', 'Banashankari', 'North Indian, Mughlai', 4.1, 775, 800, 'Yes', 'Yes'),
(2, 'Spice Elephant', 'Banashankari', 'Chinese, Thai', 4.1, 787, 800, 'Yes', 'No'),
(3, 'Empire Restaurant', 'Brigade Road', 'North Indian, Biryani', 4.0, 2500, 700, 'Yes', 'No'),
(4, 'Truffles', 'Koramangala', 'American, Burgers', 4.7, 15000, 900, 'Yes', 'No'),
(5, 'Meghana Foods', 'Indiranagar', 'Biryani, Andhra', 4.4, 12000, 600, 'Yes', 'No'),
(6, 'Toit', 'Indiranagar', 'Continental, Italian', 4.5, 10000, 1800, 'No', 'Yes'),
(7, 'MTR', 'Lalbagh Road', 'South Indian', 4.3, 8000, 400, 'No', 'No'),
(8, 'CTR', 'Malleshwaram', 'South Indian', 4.4, 6500, 300, 'No', 'No'),
(9, 'Social', 'Church Street', 'Continental, North Indian', 4.2, 5000, 1500, 'Yes', 'Yes'),
(10, 'Theobroma', 'Koramangala', 'Bakery, Desserts', 4.3, 3000, 400, 'Yes', 'No'),
(11, 'Corner House', 'Residency Road', 'Ice Cream, Desserts', 4.4, 7000, 350, 'Yes', 'No'),
(12, 'Udupi Upahar', 'Jayanagar', 'South Indian', 3.9, 900, 250, 'Yes', 'No'),
(13, 'Barbeque Nation', 'Marathahalli', 'BBQ, North Indian', 4.2, 6000, 1600, 'No', 'Yes'),
(14, 'A2B', 'Whitefield', 'South Indian, Chinese', 3.8, 1200, 500, 'Yes', 'No'),
(15, 'Pizza Bakery', 'Indiranagar', 'Italian, Pizza', 4.3, 4500, 1000, 'Yes', 'Yes');

select * from resturants ; 

select 
cuisine , 
count(*) as resturant_count 
from resturants 
where location = 'Indiranagar'
group by cuisine 
order by resturant_count desc ; 