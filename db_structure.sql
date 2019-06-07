CREATE TABLE wishlists (id SERIAL, name VARCHAR(50), description TEXT, image TEXT);
CREATE TABLE items (id SERIAL, list_id INT, name VARCHAR(50), image TEXT, purchased BOOLEAN, purchased_by VARCHAR(50));
