ALTER TABLE wholesalers RENAME TO suppliers;

DROP TABLE url;

ALTER TABLE suppliers RENAME COLUMN wholesaler_id TO supplier_id;

ALTER TABLE products RENAME COLUMN wholesaler_id TO supplier_id;
