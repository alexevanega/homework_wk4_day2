create table MT_customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(64) not null,
	last_name VARCHAR(64)
);

create table MT_Movies (
	film_id SERIAL primary key,
	movie_title VARCHAR(200) not null,
	movie_time TIME not null
);

create table MT_concession_items(
	item_id SERIAL primary key,
	item_name VARCHAR(100),
	item_price NUMERIC(2,2)
);

create table MT_tickets(
	ticket_id SERIAL primary key,
	film_id integer not null,
	foreign key (film_id) references MT_Movies(film_id),
	price NUMERIC(2,2)
);

create table MT_concessions_cart(
	cart_id SERIAL primary key,
	item_id integer not null,
	foreign key (item_id) references MT_concession_items(item_id),
	sub_total NUMERIC(8,2),
	total NUMERIC(10,2)
);

create table MT_total_cart(
	order_id SERIAL primary key,
	ticket_id integer not null,
	cart_id integer not null,
	customer_id integer not null,
	ticket_sub_total NUMERIC(8,2),
	ticket_total NUMERIC(10,2)
);

alter table MT_total_cart
add foreign key (ticket_id) references MT_tickets(ticket_id),
add foreign key (customer_id) references MT_customer(customer_id),
drop column cart_id,
add concess_cart_id integer not null;

alter table MT_total_cart
add foreign key (concess_cart_id) references MT_concessions_cart(cart_id);

alter table mt_concession_items 
add item_amount numeric;
alter table mt_concession_items
drop column item_price,
add item_price numeric;

alter table mt_tickets 
drop column price,
add price numeric;

alter table mt_concessions_cart 
drop column item_id,
add num_of_items INTEGER;

select * from MT_customer;
select * from mt_concession_items;
select * from mt_concessions_cart;
select * from mt_total_cart;
select * from mt_movies;
select * from mt_tickets;
