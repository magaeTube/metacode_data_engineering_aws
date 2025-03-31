-- 스키마 생성
CREATE SCHEMA metacode;

-- 테이블 생성
CREATE TABLE metacode.order_data (
    member_id VARCHAR(10),
    product_id VARCHAR(10),
    order_quantity INT,
    order_price BIGINT
);

-- 테이블 확인
SELECT * 
  FROM metacode.order_data;

-- 데이터 적재
COPY metacode.order_data
FROM 's3://metacode-athena-test/order_data_automatic_mapping/'
IAM_ROLE ''
FORMAT AS JSON 'auto';

-- 데이터 추출
UNLOAD (
    'SELECT * FROM metacode.order_data'
)
TO 's3://metacode-redshift-test/order_data/'
IAM_ROLE ''
FORMAT AS JSON;