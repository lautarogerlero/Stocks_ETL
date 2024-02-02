create table stocks (
	symbol VARCHAR(10),
	date DATE,
	open_value DECIMAL(10,2),
	high_value DECIMAL(10,2),
	low_value DECIMAL(10,2),
	close_value DECIMAL(10,2),
	volume INT
);

ALTER TABLE stocks
ADD COLUMN ingestion_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

select * from stocks;
