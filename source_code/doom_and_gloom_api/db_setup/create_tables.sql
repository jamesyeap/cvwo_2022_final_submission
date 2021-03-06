-- the database will have 3 tables

CREATE TABLE public.users (
	id SERIAL PRIMARY KEY,
	username TEXT UNIQUE NOT NULL,
	password TEXT
);

CREATE TABLE public.categories (
	id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	user_id INT REFERENCES users(id)
);

CREATE TABLE public.tasks (
	id SERIAL PRIMARY KEY,
	category_id INT REFERENCES categories(id),
	title VARCHAR(255) NOT NULL,
	description TEXT,
	deadline TIMESTAMP,
	completed BOOLEAN,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	user_id INT REFERENCES users(id)
);