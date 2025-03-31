-- 테이블 생성 쿼리
CREATE EXTERNAL TABLE test.order_data_without_partition (
    member_id string, 
    product_id string, 
    order_quantity int, 
    order_price int,
    order_date string
)
ROW FORMAT SERDE 
    'org.openx.data.jsonserde.JsonSerDe' 
LOCATION
    's3://metacode-athena-test/order_data_without_partition/'
;


