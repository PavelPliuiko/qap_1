CREATE TABLE public.discount
(
	discount_id serial NOT NULL, 
	promotion_id serial NOT NULL, 
	rental_id serial NOT NULL,
	amount numeric NOT NULL, 
	PRIMARY KEY (discount_id),
	FOREIGN KEY (promotion_id)
		REFERENCES public.promotion (promotion_id) MATCH SIMPLE
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
		NOT VALID,
	FOREIGN KEY (rental_id)
		REFERENCES public.rental (rental_id) MATCH SIMPLE
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
		NOT VALID
);

ALTER TABLE IF EXISTS public.discount
	OWNER to postgres