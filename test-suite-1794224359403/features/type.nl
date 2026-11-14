Feature: type

@type_1
Scenario: type "<string>"
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

@type_2
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
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"

@type_3
Scenario: type "<string>" into "<string>" with exact phrase
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
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"

@type_4
Scenario: type "<string>" into the <ordinal> "<string>"
  And click "Form Authentication"
  And wait 2 secs
  And check that screen contains "Login Page"
#type "<string>" into the <ordinal> "<string>" (1st username)
  And type "tomsmith" into the 1st "Username"
  And wait 2 secs
#type "<string>" into the <ordinal> "<string>" with exact phrase (1st password)
  And type "SuperSecretPassword!" into the 1st "Password" with exact phrase
  And wait 2 secs
  And read value from the element with id as "username" and save it as "typedUsername"
  And print value of "typedUsername"
  And check that variable {typedUsername} is equals to "tomsmith" and continue
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"