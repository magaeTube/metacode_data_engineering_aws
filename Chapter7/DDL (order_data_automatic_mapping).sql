-- 테이블 생성 쿼리
CREATE EXTERNAL TABLE test.order_data_automatic_mapping (
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
    's3://metacode-athena-test/order_data_automatic_mapping/'
;

-- 데이터 확인
SELECT * FROM test.order_data_automatic_mapping LIMIT 10;

-- 파티션 확인
SHOW PARTITIONS test.order_data_automatic_mapping;

-- 파티션 등록
MSCK REPAIR TABLE test.order_data_automatic_mapping;

