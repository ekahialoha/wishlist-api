-- Table Creation
CREATE TABLE wishlists (id SERIAL, name VARCHAR(50), description TEXT, image TEXT);
CREATE TABLE items (id SERIAL, list_id INT, name VARCHAR(50), image TEXT, purchased BOOLEAN, purchased_by VARCHAR(50));

-- Seed Lists
INSERT INTO wishlists (name, description, image) VALUES ('Molly', 'A bunch of retro video games I would like', 'https://cdn0.wideopenpets.com/wp-content/uploads/2016/07/Anya.png');
INSERT INTO wishlists (name, description, image) VALUES ('Christian', 'I need like 8 more monitors, please by me some', 'https://www.animalfriends.co.uk/app/uploads/2018/10/31102444/why-isnt-anyone-adopting-black-cats.jpg');
INSERT INTO wishlists (name, description, image) VALUES ('Billy', 'Gears of War Merch', 'http://www.clker.com/cliparts/5/7/d/a/13182196511522179118skull_logo_gears_of_war.jpg');
INSERT INTO wishlists (name, description, image) VALUES ('Alyson', 'Good reads', 'https://i1.wp.com/rescuesiamese.com/wp-content/uploads/2019/06/Sueling.jpg?fit=1616%2C1080&ssl=1');
INSERT INTO wishlists (name, description, image) VALUES ('Richard', 'Need some spectrum analyzers', 'https://images-na.ssl-images-amazon.com/images/I/61heaAMGUcL.png');

INSERT INTO items (list_id, name, image, purchased) VALUES (1, 'Asteroids Atari 2600 1981 Game', 'https://i.ebayimg.com/images/g/6HAAAOSwOqBbRiQm/s-l1600.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (1, 'Combat Atari 2600 1977 Game', 'https://i.ebayimg.com/images/g/YlwAAOSw-2dbRhRe/s-l1600.jpg', 't');
INSERT INTO items (list_id, name, image, purchased) VALUES (1, 'Home Alone', 'https://i.ebayimg.com/images/g/oAoAAOSwKUhc8dQk/s-l1600.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (1, 'Michael Jackson Moonwalker ', 'https://i.ebayimg.com/images/g/zlEAAOSwctVc6mga/s-l1600.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (1, 'The Simpsons + Streets of Rage 2', 'https://i.ebayimg.com/images/g/SZ4AAOSw9M9c92eO/s-l1600.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (1, 'Resident Evil 1.5: Battle Coliseum', 'https://i.ebayimg.com/images/g/XRoAAOSwQd5cuKpZ/s-l1600.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (1, 'Tomb Raider II', 'https://i.ebayimg.com/images/g/uP0AAOSw0ZZbziSH/s-l1600.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (2, 'ViewSonic 32" 1080p Frameless', 'https://images-na.ssl-images-amazon.com/images/I/516Vq6aI-JL._SL1000_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (2, 'Samsung C27F398 27" Curved LED Monitor', 'https://images-na.ssl-images-amazon.com/images/I/91Zya5vGUQL._SL1500_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (2, 'Premium Single 32 Inch Monitor Stand', 'https://images-na.ssl-images-amazon.com/images/I/81vVhNmk8JL._SL1500_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (2, 'FLAT 50 4K UHD 7 Series Smart TV', 'https://images-na.ssl-images-amazon.com/images/I/91GMSrYPaHL._SL1500_.jpg', 't');
INSERT INTO items (list_id, name, image, purchased) VALUES (2, 'Heavy-Duty, Full Motion TV Wall Mount', 'https://images-na.ssl-images-amazon.com/images/I/71j4GSc5ygL._SL1500_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (2, 'USB C to HDMI Cable', 'https://images-na.ssl-images-amazon.com/images/I/514McNHUqmL._SL1005_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (3, 'Gears of War 4 Strategy Guide', 'https://primagames.com/media/images/products/gow4_se_cover_3D_sm.png/PRIMA/resize/300x', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (3, 'Gears of War 4 Collectors Edition Strategy', 'https://primagames.com/media/images/products/gow4_ce_cover_3D_sm.jpg/PRIMA/resize/300x', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (3, 'Wireless Controller - Gears of War 4 Crimson', 'https://images-na.ssl-images-amazon.com/images/I/61V-wZhgRQL._AC_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (3, 'Controller Stand - Crimson', 'https://images-na.ssl-images-amazon.com/images/I/71%2BXyvF%2BVTL._AC_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (3, 'Samsung Galaxy S8 Plus Case', 'https://controllergear.com/media/wysiwyg/Samsung_Galaxy_S8_Plus_Snap_Case_In_Gloss_Gears_of_War_4_Crimson.png', 't');
INSERT INTO items (list_id, name, image, purchased) VALUES (3, 'Red Omen Hoodie', 'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE2OeoO?ver=b7d2&q=90&m=6&h=705&w=1253&b=%23FFF0F0F0&f=jpg&o=f&p=140&aim=true', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (3, 'Funko Augustus Cole Action Figure', 'https://images-na.ssl-images-amazon.com/images/I/71vqIzRqQbL._SL1200_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (3, 'Funko Brumak 6" Action Figure', 'https://images-na.ssl-images-amazon.com/images/I/91EAs6P4RIL._SL1500_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (4, 'Cracking the Coding Interview', 'https://images-na.ssl-images-amazon.com/images/I/51l5XzLln%2BL._SX348_BO1,204,203,200_.jpg', 't'),
INSERT INTO items (list_id, name, image, purchased) VALUES (4, 'Unfu*k Yourself: Get Out of Your Head', 'https://images-na.ssl-images-amazon.com/images/I/81HuYGapupL.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (4, 'Mastering Python Networking', 'https://images-na.ssl-images-amazon.com/images/I/51L8IDp1E3L._SX403_BO1,204,203,200_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (4, 'Learn Rails 5.2', 'https://images-na.ssl-images-amazon.com/images/I/41-oQUgo4dL._SX349_BO1,204,203,200_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (4, 'The Murder House', 'https://images-na.ssl-images-amazon.com/images/I/51PLGSRsv4L._SX273_BO1,204,203,200_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (4, 'Buried Secrets', 'https://images-na.ssl-images-amazon.com/images/I/51tSXoHP5nL._SX322_BO1,204,203,200_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (4, 'I Am Watching You', 'https://images-na.ssl-images-amazon.com/images/I/41GcFAgD78L._SX331_BO1,204,203,200_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (4, 'Close Your Eyes', 'https://images-na.ssl-images-amazon.com/images/I/5158Nmwq8OL.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (5, 'Introduction to Mass Spectrometry', 'https://images-na.ssl-images-amazon.com/images/I/51Xd8wAkBtL._SX371_BO1,204,203,200_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (5, 'Microwave Measurements', 'https://images-na.ssl-images-amazon.com/images/I/51Lgwd0vlCL._SX311_BO1,204,203,200_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (5, 'Handheld Spectrum Analyzer', 'https://images-na.ssl-images-amazon.com/images/I/41w2Vu-3vFL.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (5, 'Music Audio Spectrum Analyzer', 'https://images-na.ssl-images-amazon.com/images/I/718fWkqQu5L._SL1500_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (5, 'Spectrum Analyzer', 'https://images-na.ssl-images-amazon.com/images/I/71OMCtfDSEL._SL1500_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (5, '2.4 & 5 GHz Spectrum Analyzer', 'https://images-na.ssl-images-amazon.com/images/I/618PYPyz4PL._SL1500_.jpg', 'f');
INSERT INTO items (list_id, name, image, purchased) VALUES (5, 'Electromagnetic Radiation Meter', 'https://images-na.ssl-images-amazon.com/images/I/61zw83Zvd0L._SL1004_.jpg', 'f');
