-- Table Creation
CREATE TABLE wishlists (id SERIAL, name VARCHAR(50), description TEXT, image TEXT);
CREATE TABLE items (id SERIAL, list_id INT, name VARCHAR(50), image TEXT, purchased BOOLEAN, purchased_by VARCHAR(50));

-- Seed Lists
INSERT INTO wishlists (name, description, image) VALUES ('Molly', 'A bunch of retro video games I would like', 'https://cdn0.wideopenpets.com/wp-content/uploads/2016/07/Anya.png');
INSERT INTO wishlists (name, description, image) VALUES ('Christian', 'I need like 8 more monitors, please by me some', 'https://www.animalfriends.co.uk/app/uploads/2018/10/31102444/why-isnt-anyone-adopting-black-cats.jpg');
INSERT INTO wishlists (name, description, image) VALUES ('Billy', 'Gears of War Merch', 'http://www.clker.com/cliparts/5/7/d/a/13182196511522179118skull_logo_gears_of_war.jpg');
INSERT INTO wishlists (name, description, image) VALUES ('Alyson', 'Good reads', 'https://i1.wp.com/rescuesiamese.com/wp-content/uploads/2019/06/Sueling.jpg?fit=1616%2C1080&ssl=1');
INSERT INTO wishlists (name, description, image) VALUES ('Richard', 'Need some spectrum analyzers', 'https://images-na.ssl-images-amazon.com/images/I/61heaAMGUcL.png');
