ALTER TABLE IF EXISTS ONLY public.products
    DROP CONSTRAINT IF EXISTS pk_product_key CASCADE;
ALTER TABLE IF EXISTS ONLY public.category
    DROP CONSTRAINT IF EXISTS pk_category_key CASCADE;
ALTER TABLE IF EXISTS ONLY public.supplier
    DROP CONSTRAINT IF EXISTS pk_supplier_name CASCADE;
ALTER TABLE IF EXISTS ONLY public.products
    DROP CONSTRAINT IF EXISTS fk_category_name CASCADE;
ALTER TABLE IF EXISTS ONLY public.products
    DROP CONSTRAINT IF EXISTS fk_supplier_name CASCADE;

DROP TABLE IF EXISTS public.products;
DROP TABLE IF EXISTS public.supplier;
DROP TABLE IF EXISTS public.category;

DROP SEQUENCE IF EXISTS products_id_seq;
CREATE TABLE public.products
(
    id               serial NOT NULL,
    name             varchar(255),
    category_id      int,
    default_price    float,
    default_currency varchar(10),
    supplier_id      int,
    description      varchar(255)
);
DROP SEQUENCE IF EXISTS category_id_seq;
CREATE TABLE public.category
(
    id          serial NOT NULL,
    name        varchar(255),
    department  varchar(255),
    description VARCHAR(255)
);

DROP SEQUENCE IF EXISTS supplier_id_seq;
CREATE TABLE public.supplier
(
    id          serial NOT NULL,
    name        varchar(255),
    description varchar(255)
);

ALTER TABLE ONLY public.products
    ADD CONSTRAINT pk_product_key PRIMARY KEY (id);
ALTER TABLE ONLY public.category
    ADD CONSTRAINT pk_category_key PRIMARY KEY (id);
ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT pk_supplier_name PRIMARY KEY (id);
ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_category_name FOREIGN KEY (category_id) REFERENCES category (id);
ALTER TABLE ONLY public.products
    Add CONSTRAINT fk_supplier_name FOREIGN KEY (supplier_id) REFERENCES supplier (id);



INSERT INTO supplier VALUES (DEFAULT, 'First Craft Beer', 'Beer');
INSERT INTO supplier VALUES (DEFAULT, 'Legenda Brewing', 'Beer');
INSERT INTO supplier VALUES (DEFAULT, 'MONYO Brewing Co.', 'Beer');
INSERT INTO supplier VALUES (DEFAULT, 'Szent Andras Brewin', 'Beer');
INSERT INTO supplier VALUES (DEFAULT, 'Simple Wate', 'Beer');
INSERT INTO supplier VALUES (DEFAULT, 'CodeCool', 'Beer');

INSERT INTO category VALUES (DEFAULT, 'IPA', 'Beer', 'Beer is a teast flued witch make you smile');
INSERT INTO category VALUES (DEFAULT, 'APA', 'Beer', 'Beer is a teast flued witch make you smile');
INSERT INTO category VALUES (DEFAULT, 'Stout', 'Beer', 'Beer is a teast flued witch make you smile');
INSERT INTO category VALUES (DEFAULT, 'Lager', 'Beer', 'Beer is a teast flued witch make you smile');
INSERT INTO category VALUES (DEFAULT, 'Water', 'Water', 'Water is health!');

INSERT INTO products VALUES (DEFAULT, 'Fake Coffee', 3, 650, 'HUF', 1, 'Stout style black craft beer with good old coffee taste');
INSERT INTO products VALUES (DEFAULT, 'Tropical Ipa', 1, 750, 'HUF', 1, 'A FIRST Tropical IPA  with awsome tropical taste');
INSERT INTO products VALUES (DEFAULT, 'Twisted Pils', 4, 550, 'HUF', 1, 'Traditional czech lager craft beer.');
INSERT INTO products VALUES (DEFAULT, 'Kohatu Kohatu', 1, 1200, 'HUF', 1, 'Single hop New england IPA');
INSERT INTO products VALUES (DEFAULT, 'Milk Stout', 3, 900, 'HUF', 2, 'Black stout beer');
INSERT INTO products VALUES (DEFAULT, 'Black Jack', 1, 500, 'HUF', 2, 'Good old hungarian IPA');
INSERT INTO products VALUES (DEFAULT, 'Buldozer', 1, 700, 'HUF', 2, 'Simple IPA.');
INSERT INTO products VALUES (DEFAULT, 'Six Fingers', 4,  800, 'HUF', 2, 'Harmonic taste in weeise beer');
INSERT INTO products VALUES (DEFAULT, 'American Beauty', 2, 750, 'HUF', 3, 'American Pale Ale');
INSERT INTO products VALUES (DEFAULT, 'Black Mamba', 3,950, 'HUF', 3, 'Black milk stout!');
INSERT INTO products VALUES (DEFAULT, 'Flying Rabbit', 1, 650, 'HUF', 3, 'American IPA');
INSERT INTO products VALUES (DEFAULT, 'Schatzi', 4, 800, 'HUF', 3, 'Simple Lager');
INSERT INTO products VALUES (DEFAULT, 'Bandiba', 1, 650, 'HUF', 4, 'Tasty American IPA');
INSERT INTO products VALUES (DEFAULT, 'Esthajnal 18', 3, 1000, 'HUF', 4, 'Strong stout with plum flavoring');
INSERT INTO products VALUES (DEFAULT, 'Ogre', 4, 540, 'HUF', 4, 'Strong tasty lager');
INSERT INTO products VALUES (DEFAULT, 'CodeCool Beer', 1, 900, 'HUF', 6, 'Tasty IPA from the best!');
INSERT INTO products VALUES (DEFAULT, 'Tap water', 5, 15000, 'HUF', 5, 'Quality from wall!');
