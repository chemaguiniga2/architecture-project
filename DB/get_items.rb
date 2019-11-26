require 'aws-sdk-dynamodb'
require 'pp'

dynamodb = Aws::DynamoDB::Client.new
response = dynamodb.scan(table_name: 'Questions')
items = response.items
puts items