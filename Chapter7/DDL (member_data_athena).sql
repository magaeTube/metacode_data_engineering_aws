CREATE EXTERNAL TABLE test.member_data_athena (
  member_id string, 
  member_name string, 
  member_age int, 
  member_gender string, 
  signup_date string
)
ROW FORMAT SERDE 
  'org.openx.data.jsonserde.JsonSerDe' 
LOCATION
  's3://metacode-athena-test/member_data_athena'
;