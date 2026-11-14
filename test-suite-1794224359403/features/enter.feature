Feature: enter

@regression_4
Scenario: enter
  And click "Form Authentication"
  And wait 2 secs
  And check that screen contains "Login Page"
  And enter "wronguser" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "Your username is invalid!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into "<string>" with exact phrase
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into the <ordinal> "<string>"
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into the 2nd "Username"
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into the <ordinal> "<string>" with exact phrase
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into the 1st "Username" with exact phrase
  And enter "SuperSecretPassword!" into the 1st "Password" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into "<string>" with exact phrase 
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "username" with exact phrase
  And enter "SuperSecretPassword!" into "password" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" (at the current focus)
  And click "Form Authentication"
  And wait 2 secs
  And click on the element with id as "username"
  And enter "tomsmith"
  And press TAB
  And enter "SuperSecretPassword!"
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the below of "<string>"
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into field on the below of "Login Page"
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the below of <ordinal> "<string>"
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into field on the below of 1st "Login Page"
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the below of "<string>" with exact phrase
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into field on the below of "Login Page" with exact phrase
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the below of <ordinal> "<string>" with exact phrase
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into field on the below of 1st "Login Page" with exact phrase
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the above of "<string>"
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into field on the above of "Elemental Selenium"
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the above of <ordinal> "<string>" 
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into field on the above of 2nd "Login"
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the above of <ordinal> "<string>" with exact phrase
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into field on the above of 2nd "Login" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs