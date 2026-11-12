Feature: type

@regression_13
Scenario: type
  click "Form Authentication"
  wait 2 secs
  check that screen contains "Login Page"
  click on the element with id as "username"
#type "<string>"
  type "tomsmith"
  wait 2 secs
  read value from the element with id as "username" and save it as "typedUsername"
  print value of "typedUsername"
  check that variable {typedUsername} is equals to "tomsmith" and continue
  go back
  click "Form Authentication"
  wait 2 secs
  check that screen contains "Login Page"
#type "<string>" into "<string>" with exact phrase (username)
  type "tomsmith" into "Username" with exact phrase
  wait 2 secs
#type "<string>" into "<string>" with exact phrase (password)
  type "SuperSecretPassword!" into "Password" with exact phrase
  wait 2 secs
  read value from the element with id as "username" and save it as "typedUsername"
  print value of "typedUsername"
  check that variable {typedUsername} is equals to "tomsmith" and continue
  click "Login"
  wait 2 secs
  check that screen contains "Secure Area"
  go back
  wait 2 secs
  click "Form Authentication"
  wait 2 secs
  check that screen contains "Login Page"
#type "<string>" into the <ordinal> "<string>" 
  type "tomsmith" into the 2nd "Username"
  wait 2 secs
#type "<string>" into the <ordinal> "<string>" with exact phrase
  type "SuperSecretPassword!" into the 1st "Password" with exact phrase
  wait 2 secs
  read value from the element with id as "username" and save it as "typedUsername"
  print value of "typedUsername"
  check that variable {typedUsername} is equals to "tomsmith" and continue
  click "Login"
  wait 2 secs
  check that screen contains "Secure Area"
  go back

@type_1
Scenario: type "<string>" into "<string>" 
click "Form Authentication"
  wait 2 secs
  check that screen contains "Login Page"
#type "<string>" into "<string>" (username)
  type "tomsmith" into "Username"
  wait 2 secs
#type "<string>" into "<string>" (password)
  type "SuperSecretPassword!" into "Password"
  wait 2 secs
  read value from the element with id as "username" and save it as "typedUsername"
  print value of "typedUsername"
  check that variable {typedUsername} is equals to "tomsmith" and continue
  click "Login"
  wait 2 secs
  check that screen contains "Secure Area"
  go back
