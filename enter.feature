Feature: enter

@regression_4
Scenario: enter
  click "Form Authentication"
  wait 2 secs
  check that screen contains "Login Page"
  enter "wronguser" into "Username" with exact phrase
  enter "SuperSecretPassword!" into "Password" with exact phrase
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "Your username is invalid!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into "<string>" with exact phrase
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into "Username" with exact phrase
  enter "SuperSecretPassword!" into "Password" with exact phrase
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into the <ordinal> "<string>"
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into the 2nd "Username"
  enter "SuperSecretPassword!" into "Password" with exact phrase
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into the <ordinal> "<string>" with exact phrase
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into the 1st "Username" with exact phrase
  enter "SuperSecretPassword!" into the 1st "Password" with exact phrase
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into "<string>" with exact phrase 
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into "username" with exact phrase
  enter "SuperSecretPassword!" into "password" with exact phrase
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" (at the current focus)
  click "Form Authentication"
  wait 2 secs
  click on the element with id as "username"
  enter "tomsmith"
  press TAB
  enter "SuperSecretPassword!"
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into field on the below of "<string>"
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into field on the below of "Login Page"
  enter "SuperSecretPassword!" into "Password" with exact phrase
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into field on the below of <ordinal> "<string>"
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into field on the below of 1st "Login Page"
  enter "SuperSecretPassword!" into "Password" with exact phrase
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into field on the below of "<string>" with exact phrase
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into field on the below of "Login Page" with exact phrase
  enter "SuperSecretPassword!" into "Password" with exact phrase
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into field on the below of <ordinal> "<string>" with exact phrase
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into field on the below of 1st "Login Page" with exact phrase
  enter "SuperSecretPassword!" into "Password" with exact phrase
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into field on the above of "<string>"
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into "Username" with exact phrase
  enter "SuperSecretPassword!" into field on the above of "Elemental Selenium"
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into field on the above of <ordinal> "<string>" 
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into "Username" with exact phrase
  enter "SuperSecretPassword!" into field on the above of 2nd "Login"
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
#enter "<string>" into field on the above of <ordinal> "<string>" with exact phrase
  click "Form Authentication"
  wait 2 secs
  enter "tomsmith" into "Username" with exact phrase
  enter "SuperSecretPassword!" into field on the above of 2nd "Login" with exact phrase
  click "Login" with exact phrase
  wait 2 secs
  check that screen contains "You logged into a secure area!"
  go back
  wait 2 secs
  go back
  wait 2 secs
