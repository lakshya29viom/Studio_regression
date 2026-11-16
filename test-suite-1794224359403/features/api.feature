Feature: api

@api
Scenario: api steps that passed
#compose a (get|post|put|patch|delete) request to "<string>" with headers
  And compose a get request to "https://dummyjson.com/users/1" with headers
    | Accept | application/json |
#execute and save the response as "<string>"
  And execute and save the response as "userResponse"
#check that response <string> has "<string>" as status code [ and continue]
  And check that response {userResponse} has "200" as status code
  And check that response {userResponse} has "200" as status code and continue
#check that API response <string> contains "<string>" at "<string>" (the user with id 1 is Emily Johnson, username emilys)
  And check that API response {userResponse} contains "emilys" at "$.username"
  And check that API response {userResponse} contains "Emily" at "$.firstName"
#extract value from API response <string> at "<string>" and save it as "<string>"
  And compose a get request to "https://dummyjson.com/users/1" with headers
    | Accept | application/json |
  And execute and save the response as "userResponse2"
  And extract value from API response {userResponse2} at "$.firstName" and save it as "firstName"
  And print value of "firstName"
  And check that variable {firstName} is equals to "Emily"
  And extract value from API response {userResponse2} at "$.id" and save it as "userId"
  And print value of "userId"
  And check that variable {userId} is equals to "1"
  And compose a get request to "https://dummyjson.com/users/1" with headers
    | Accept | application/json |
  And execute and save the response as "userResponse3"
  And extract value from API response {userResponse3} at "$.id" and save it as "userId3"
  And print value of "userId3"
  And compose a get request to "https://dummyjson.com/users/{userId3}" with headers
    | Accept | application/json |
  And execute and save the response as "userByIdResponse"
  And check that response {userByIdResponse} has "200" as status code
  And check that API response {userByIdResponse} contains "emilys" at "$.username"
#with the below JSON request 
  And compose a post request to "https://dummyjson.com/auth/login" with headers
    | Content-Type | application/json |
  And with the below JSON request
    """
    {"username": "emilys", "password": "emilyspass", "expiresInMins": 30}
    """
  And execute and save the response as "loginResponse"
  And check that response {loginResponse} has "200" as status code
  And check that API response {loginResponse} contains "emilys" at "$.username"
  And compose a get request to "https://dummyjson.com/users/1" with headers
    | Accept | application/json |
  And execute and save the response as "userResponse5"
  And extract value from API response {userResponse5} at "$.username" and save it as "loginUser"
  And print value of "loginUser"
  And compose a post request to "https://dummyjson.com/auth/login" with headers
    | Content-Type | application/json |
  And with the below JSON request
    """
    {"username": "{loginUser}", "password": "emilyspass", "expiresInMins": 30}
    """
  And execute and save the response as "loginResponse5"
  And check that response {loginResponse5} has "200" as status code
  And check that API response {loginResponse5} contains "emilys" at "$.username"
  And compose a post request to "https://dummyjson.com/auth/login" with headers
    | Content-Type | application/json |
  And with the below JSON request
    """
    {"username": "emilys", "password": "emilyspass", "expiresInMins": 30}
    """
  And execute and save the response as "loginResponse6"
  And extract value from API response {loginResponse6} at "$.accessToken" and save it as "authToken"
  And print value of "authToken"
  And compose a get request to "https://dummyjson.com/auth/me" with headers
    | Authorization | Bearer {authToken} |
  And execute and save the response as "meResponse"
  And check that response {meResponse} has "200" as status code
  And check that API response {meResponse} contains "emilys" at "$.username"
  And compose a post request to "https://dummyjson.com/products/add" with headers
    | Content-Type | application/json |
  And with the below JSON request
    """
    {"title": "BMW Pencil"}
    """
  And execute and save the response as "postResponse"
  And check that response {postResponse} has "201" as status code and continue
  And check that API response {postResponse} contains "BMW Pencil" at "$.title"
  And compose a put request to "https://dummyjson.com/products/1" with headers
    | Content-Type | application/json |
  And with the below JSON request
    """
    {"title": "iPhone Galaxy +1"}
    """
  And execute and save the response as "putResponse"
  And check that response {putResponse} has "200" as status code and continue
  And check that API response {putResponse} contains "iPhone Galaxy +1" at "$.title"
  And compose a patch request to "https://dummyjson.com/products/1" with headers
    | Content-Type | application/json |
  And with the below JSON request
    """
    {"title": "Patched title"}
    """
  And execute and save the response as "patchResponse"
  And check that response {patchResponse} has "200" as status code and continue
  And check that API response {patchResponse} contains "Patched title" at "$.title"
  And compose a delete request to "https://dummyjson.com/products/1" with headers
    | Accept | application/json |
  And execute and save the response as "deleteResponse"
  And check that response {deleteResponse} has "200" as status code and continue
  And check that API response {deleteResponse} contains "true" at "$.isDeleted"
  And compose a get request to "https://dummyjson.com/products/0" with headers
    | Accept | application/json |
  And execute and save the response as "missingResponse"
  And check that response {missingResponse} has "404" as status code

@api_1
Scenario: check that API response contains a substring on a 404 response 
  And compose a get request to "https://dummyjson.com/products/0" with headers
    | Accept | application/json |
  And execute and save the response as "missingResponse1"
  And print value of "missingResponse1"
  And check that response {missingResponse1} has "404" as status code
  And check that API response {missingResponse1} contains "Product with id '0' not found" at "$.message"
  And check that API response {missingResponse1} contains "not found" at "$.message"
  And check that response {missingResponse1} has "404" as status code

@api_2
Scenario: check that API response contains a substring or a wrong value on a 200 response 
  And compose a get request to "https://dummyjson.com/users/1" with headers
    | Accept | application/json |
  And execute and save the response as "userResponseControl"
  And check that response {userResponseControl} has "200" as status code
  And check that API response {userResponseControl} contains "emilys" at "$.username"
  And check that API response {userResponseControl} contains "emil" at "$.username"
  And check that API response {userResponseControl} contains "wrongname" at "$.username"
  And check that response {userResponseControl} has "200" as status code
