CREATE TABLE users (
	user_id INTEGER PRIMARY KEY,
	name TEXT NOT NULL,
	password TEXT NOT NULL,
	permission TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE,
  updated_at TIMESTAMP WITH TIME ZONE
);

CREATE TABLE wholesalers (
	wholesaler_id INTEGER PRIMARY KEY,
  user_id INTEGER REFERENCES users (user_id),
	name TEXT NOT NULL,
	password TEXT NOT NULL,
  url_login TEXT NOT NULL,
	url_products TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE,
  updated_at TIMESTAMP WITH TIME ZONE
);

CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  wholesaler_id INTEGER REFERENCES wholesalers (wholesaler_id),
  name TEXT NOT NULL,
  url TEXT NOT NULL,
  price NUMERIC NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE,
  updated_at TIMESTAMP WITH TIME ZONE
);

CREATE TABLE historic_prices (
  historic_price_id INTEGER PRIMARY KEY,
  product_id INTEGER REFERENCES products (product_id),
  price NUMERIC,
  created_at TIMESTAMP WITH TIME ZONE
);
