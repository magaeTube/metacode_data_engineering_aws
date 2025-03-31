-- 테이블 생성 쿼리
CREATE EXTERNAL TABLE test.order_data_parquet_compression (
    member_id string, 
    product_id string, 
    order_quantity int, 
    order_price int
)
PARTITIONED BY ( 
    order_date string
)
STORED AS PARQUET
LOCATION
    's3://metacode-athena-test/order_data_parquet_compression/'
TBLPROPERTIES (
    'parquet.compression'='SNAPPY'
)
;

-- 데이터 확인
SELECT * FROM test.order_data_parquet_compression LIMIT 10;

-- 파티션 확인
SHOW PARTITIONS test.order_data_parquet_compression;

-- 파티션 등록
MSCK REPAIR TABLE test.order_data_parquet_compression;

