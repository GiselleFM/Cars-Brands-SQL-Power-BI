USE cars;

CREATE TABLE manufacturers (
    manufacturer_id INT AUTO_INCREMENT PRIMARY KEY,
    manufacturer_name VARCHAR(100) UNIQUE
);

CREATE TABLE models (
    model_id INT AUTO_INCREMENT PRIMARY KEY,
    manufacturer_id INT,
    model_name VARCHAR(100),
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(manufacturer_id),
    UNIQUE (manufacturer_id, model_name) -- evita duplicidade dentro do fabricante
);

CREATE TABLE sales_fact (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    manufacturer_id INT,
    model_id INT,
    year INT,
    mileage DECIMAL(10,2),
    price DECIMAL(12,2),
    fuel_type VARCHAR(50),
    engine_size DECIMAL(4,1),
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(manufacturer_id),
    FOREIGN KEY (model_id) REFERENCES models(model_id)
);

INSERT INTO manufacturers (manufacturer_name)
SELECT DISTINCT manufacturer
FROM sales;

INSERT INTO models (manufacturer_id, model_name)
SELECT m.manufacturer_id, s.model
FROM sales s
JOIN manufacturers m
    ON s.manufacturer = m.manufacturer_name
GROUP BY m.manufacturer_id, s.model;

INSERT INTO sales_fact (model_id, year, mileage, price, fuel_type, engine_size, manufacturer_id)
SELECT mo.model_id, s.year, s.mileage, s.price, s.fuel_type, s.engine_size, ma.manufacturer_id
FROM sales s
JOIN manufacturers ma
    ON s.manufacturer = ma.manufacturer_name
JOIN models mo
    ON s.model = mo.model_name AND mo.manufacturer_id = ma.manufacturer_id;
    
    
SELECT *
FROM sales_fact;






