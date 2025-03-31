------------------------------------
-- Datashare 생성 및 사용
------------------------------------
-- Producer Cluster
-- Datashare 생성
CREATE DATASHARE metacode_datashare;

-- Datashare에 Schema 추가
ALTER DATASHARE metacode_datashare
  ADD SCHEMA metacode;

-- Datashare에 Table 추가
ALTER DATASHARE metacode_datashare
  ADD TABLE metacode.order_data;

-- 권한 부여
GRANT USAGE ON DATASHARE metacode_datashare TO NAMESPACE '';

-- Public Accessible 설정
ALTER DATASHARE metacode_datashare SET publicaccessible=true;

-- Consumer Cluster
-- Namespace 확인
SELECT current_namespace;

-- Datashare용 데이터베이스 생성
create database metacode_datashare_db 
from datashare metacode_datashare 
of account ''
namespace ''
; 

-- Datashare 테이블 확인
SELECT * FROM metacode_datashare_db.metacode.order_data;

-- 시스템 뷰
SELECT * FROM svv_datashares;
SELECT * FROM svv_datashare_objects;
SELECT * FROM svv_datashare_consumers;




------------------------------------
-- Spectrum을 이용한 외부 테이블 생성
------------------------------------
CREATE EXTERNAL SCHEMA metacode_external
FROM DATA CATALOG
DATABASE 'test'
IAM_ROLE ''
CREATE EXTERNAL DATABASE IF NOT EXISTS;

SELECT * FROM metacode_external.member_data;