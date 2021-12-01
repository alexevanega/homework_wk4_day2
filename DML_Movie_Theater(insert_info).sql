select * from mt_customer;

insert into mt_customer(
	first_name,
	last_name
)
Values(
	'Alex',
	'Evanega'
),(
	'Kathryn',
	'Lavoie'
),(
	'Elijah',
	'Simpson'
),(
	'Amanda',
	'Whitley'
),(
	'Grace',
	'Lavoie'
),(
	'Julie',
	'Youmans'
);

select * from mt_movies;

insert into mt_movies(
	movie_title,
	movie_time
)
Values(
	'The Replacements',
	'5:00'
),(
	'The Replacements',
	'7:30'
),(
	'The Replacements',
	'10:00'
),(
	'Ghostbusters',
	'5:00'
),(
	'Ghostbusters',
	'7:30'
),(
	'Ghostbusters',
	'10:00'
),(
	'Armageddon',
	'5:00'
),(
	'Armageddon',
	'7:30'
),(
	'Armageddon',
	'10:00'
),(
	'Ready Player One',
	'5:00'
),(
	'Ready Player One',
	'7:30'
),(
	'Ready Player One',
	'10:00'
);

select * from mt_concession_items ;

insert into mt_concession_items(
	item_name,
	item_price,
	item_amount
)
values(
	'Popcorn',
	10.50,
	750
),(
	'Nachos',
	5.00,
	115
),(
	'Hot Dogs',
	8.25,
	195
),(
	'Candy(Assorted Items)',
	4.75,
	355
),(
	'Lg Drink',
	12.00,
	325
),(
	'Md Drink',
	10.00,
	550
),(
	'Sm Drink',
	8.00,
	400
);

select * from mt_tickets;

insert into mt_tickets(
	film_id,
	price
)
values(
	1,
	10.00
),(
	2,
	10.00
),(
	3,
	8.00
),(
	4,
	10.00
),(
	5,
	10.00
),(
	6,
	8.00
),(
	7,
	10.00
),(
	8,
	10.00
),(
	9,
	8.00
),(
	10,
	10.00
),(
	11,
	10.00
),(
	12,
	8.00
);

select * from mt_concessions_cart;

insert into mt_concessions_cart(
	num_of_items,
	sub_total,
	total
) 
values(
	2,
	22.50,
	24.50
),(
	4,
	30.25,
	35.25
),
(
	2,
	16.25,
	18.25
),
(
	3,
	21.75,
	25.75
),
(
	5,
	40.50,
	48.50
),
(
	1,
	12.00,
	13.50
);

select * from mt_total_cart;

insert into mt_total_cart(
	ticket_id,customer_id,
	concess_cart_id, ticket_sub_total,
	ticket_total
)
values(
	3,1,3,8.00,10.00
),(
	10,2,5,10.00,12.00
),(
	8,4,1,10.00,12.00
),(
	4,6,4,10.00,12.00
),(
	12,5,6,8.00,10.00
),(
	9,3,2,8.00,10.00
);





