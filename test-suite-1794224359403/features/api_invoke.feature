@invoke
Feature: api invoke

@invoke_1
Scenario: invoke api "<string>" from collection "<string>"
#invoke api "<string>" from collection "<string>"
  And invoke api "LoginAPI" from collection "Auth"

@invoke_2
Scenario: invoke collection "<string>"
#invoke collection "<string>"
  And invoke collection "Auth"

@invoke_3
Scenario: the data captured by the saved api is stored under the capture rule names
  And invoke api "LoginAPI" from collection "Auth"
  And print value of "statusCode"
  And check that variable {statusCode} is equals to "200"
  And print value of "accessToken"
