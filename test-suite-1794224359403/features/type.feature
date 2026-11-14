Feature: type

@regression_13
Scenario: type
  And click "Form Authentication"
  And wait 2 secs
  And check that screen contains "Login Page"
  And click on the element with id as "username"
#type "<string>"
  And type "tomsmith"
  And wait 2 secs
  And read value from the element with id as "username" and save it as "typedUsername"
  And print value of "typedUsername"
  And check that variable {typedUsername} is equals to "tomsmith" and continue
  And go back
  And click "Form Authentication"
  And wait 2 secs
  And check that screen contains "Login Page"
#type "<string>" into "<string>" with exact phrase (username)
  And type "tomsmith" into "Username" with exact phrase
  And wait 2 secs
#type "<string>" into "<string>" with exact phrase (password)
  And type "SuperSecretPassword!" into "Password" with exact phrase
  And wait 2 secs
  And read value from the element with id as "username" and save it as "typedUsername"
  And print value of "typedUsername"
  And check that variable {typedUsername} is equals to "tomsmith" and continue
  And click "Login"
  And wait 2 secs
  And check that screen contains "Secure Area"
  And go back
  And wait 2 secs
  And click "Form Authentication"
  And wait 2 secs
  And check that screen contains "Login Page"
#type "<string>" into the <ordinal> "<string>" 
  And type "tomsmith" into the 2nd "Username"
  And wait 2 secs
#type "<string>" into the <ordinal> "<string>" with exact phrase
  And type "SuperSecretPassword!" into the 1st "Password" with exact phrase
  And wait 2 secs
  And read value from the element with id as "username" and save it as "typedUsername"
  And print value of "typedUsername"
  And check that variable {typedUsername} is equals to "tomsmith" and continue
  And click "Login"
  And wait 2 secs
  And check that screen contains "Secure Area"
  And go back

@type_1
Scenario: type "<string>" into "<string>" 
And click "Form Authentication"
  And wait 2 secs
  And check that screen contains "Login Page"
#type "<string>" into "<string>" (username)
  And type "tomsmith" into "Username"
  And wait 2 secs
#type "<string>" into "<string>" (password)
  And type "SuperSecretPassword!" into "Password"
  And wait 2 secs
  And read value from the element with id as "username" and save it as "typedUsername"
  And print value of "typedUsername"
  And check that variable {typedUsername} is equals to "tomsmith" and continue
  And click "Login"
  And wait 2 secs
  And check that screen contains "Secure Area"
  And go back