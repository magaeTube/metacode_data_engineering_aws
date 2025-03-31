-- 테이블 생성 쿼리
CREATE EXTERNAL TABLE test.order_data_manual_mapping (
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
    's3://metacode-athena-test/order_data_manual_mapping/'
;

-- 데이터 확인
SELECT * FROM test.order_data_manual_mapping LIMIT 10;

-- 파티션 확인
SHOW PARTITIONS test.order_data_manual_mapping;

-- 파티션 등록
ALTER TABLE test.order_data_manual_mapping ADD PARTITION (order_date='20250202') LOCATION 's3://metacode-athena-test/order_data_manual_mapping/20250202/';
ALTER TABLE test.order_data_manual_mapping ADD PARTITION (order_date='20250203') LOCATION 's3://metacode-athena-test/order_data_manual_mapping/20250203/';

-- 파티션 해제
ALTER TABLE test.order_data_manual_mapping DROP PARTITION (order_date='20250202');
ALTER TABLE test.order_data_manual_mapping DROP PARTITION (order_date='20250203');