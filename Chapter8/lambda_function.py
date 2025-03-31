import json

def lambda_handler(event, context):
    # TODO implement
    # 버킷 명을 출력
    print(f"Bucket Name : {event['Records'][0]['s3']['bucket']['name']}")

    # 객체 명을 출력
    print(f"Object Name : {event['Records'][0]['s3']['object']['key']}")
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }