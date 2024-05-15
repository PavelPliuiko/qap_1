CREATE TABLE public.promotion
(
	starting_date timestamp with time zone NOT NULL, 
	ending_date timestamp with time zone NOT NULL,
	description text NOT NULL, promotion_id serial NOT NULL,
	promotion_id serial NOT NULL,
	PRIMARY KEY (promotion_id)
)
	
ALTER TABLE IF EXISTS public.promotion
	OWNER to postgres;