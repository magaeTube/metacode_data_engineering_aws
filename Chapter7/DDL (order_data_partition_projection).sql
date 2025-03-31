-- 테이블 생성 쿼리
CREATE EXTERNAL TABLE test.order_data_partition_projection (
    member_id string, 
    product_id string, 
    order_quantity int, 
    order_price int
)
PARTITIONED BY ( 
    order_date string
)
ROW FORMAT SERDE 
    'org.openx.data.jsonserde.JsonSerDe' 
LOCATION
    's3://metacode-athena-test/order_data_partition_projection/'
TBLPROPERTIES (
    'projection.enabled'='true', 
    'projection.order_date.format'='yyyyMMdd', 
    'projection.order_date.range'='20250202,20251231', 
    'projection.order_date.type'='date', 
    'storage.location.template'='s3://metacode-athena-test/order_data_partition_projection/${order_date}/' 
)
;


-- 데이터 확인
SELECT * FROM test.order_data_partition_projection LIMIT 10;

-- 파티션 확인
SHOW PARTITIONS test.order_data_partition_projection;