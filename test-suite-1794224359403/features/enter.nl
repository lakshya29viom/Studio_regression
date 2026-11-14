Feature: enter

@regression_4
Scenario: enter
#---------- SANITY : a wrong value must give an error, proving enter really types ----------
  And click "Form Authentication"
  And wait 2 secs
  And check that screen contains "Login Page"
  And enter "wronguser" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "Your username is invalid!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs

#---------- SYNTAX 1 : enter "<string>" [into [the <ordinal>] "<string>" [with exact phrase]] ----------
#enter "<string>" into "<string>" with exact phrase
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into "<string>" (the description sentence also contains "username", so this may not hit the label)
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "Username"
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into the <ordinal> "<string>"
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into the 1st "Username"
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" inside button
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
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into "<string>" with exact phrase (target by field id / name)
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "username" with exact phrase
  And enter "SuperSecretPassword!" into "password" with exact phrase
  And click "Login" inside button
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
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs

#---------- SYNTAX 3 : below ("Login Page" is above the form, so the nearest field below it is Username) ----------
#enter "<string>" into field on the below of "<string>"
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into field on the below of "Login Page"
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" inside button
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
  And click "Login" inside button
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
  And click "Login" inside button
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
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs

#---------- SYNTAX 3 : above (the nearest field above the footer link / Login button is Password) ----------
#enter "<string>" into field on the above of "<string>"
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into field on the above of "Elemental Selenium"
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the above of <ordinal> "<string>" (2nd "Login" is the button, 1st is the "Login Page" heading)
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into field on the above of 2nd "Login"
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the above of "<string>" with exact phrase
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into field on the above of "Login" with exact phrase
  And click "Login" inside button
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
  And enter "SuperSecretPassword!" into field on the above of 1st "Login" with exact phrase
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs

#---------- SYNTAX 3 : right (assumes the Username label and its field sit on the same row) ----------
#enter "<string>" into field on the right of "<string>" (may hit the description sentence first)
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into field on the right of "Username"
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the right of <ordinal> "<string>" (2nd "Username" is the label)
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into field on the right of 2nd "Username"
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the right of "<string>" with exact phrase
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into field on the right of "Username" with exact phrase
  And enter "SuperSecretPassword!" into field on the right of "Password" with exact phrase
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
#enter "<string>" into field on the right of <ordinal> "<string>" with exact phrase
  And click "Form Authentication"
  And wait 2 secs
  And enter "tomsmith" into field on the right of 1st "Username" with exact phrase
  And enter "SuperSecretPassword!" into field on the right of 1st "Password" with exact phrase
  And click "Login" inside button
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs

#---------- SYNTAX 3 : left (Dynamic Controls, the text field sits to the left of its Enable / Disable button) ----------
#enter "<string>" into field on the left of "<string>"
  And click "Dynamic Controls"
  And wait 2 secs
  And click "Enable" with exact phrase
  And wait for "enabled!"
  And enter "hello" into field on the left of "Disable"
  And wait 2 secs
  And read value from field on the left of "Disable" and save it as "enteredValue"
  And print value of "enteredValue"
  And go back
  And wait 2 secs
#enter "<string>" into field on the left of <ordinal> "<string>"
  And click "Dynamic Controls"
  And wait 2 secs
  And click "Enable" with exact phrase
  And wait for "enabled!"
  And enter "hello" into field on the left of 1st "Disable"
  And wait 2 secs
  And read value from field on the left of 1st "Disable" and save it as "enteredValue"
  And print value of "enteredValue"
  And go back
  And wait 2 secs
#enter "<string>" into field on the left of "<string>" with exact phrase
  And click "Dynamic Controls"
  And wait 2 secs
  And click "Enable" with exact phrase
  And wait for "enabled!"
  And enter "hello" into field on the left of "Disable" with exact phrase
  And wait 2 secs
  And read value from field on the left of "Disable" and save it as "enteredValue" with exact phrase
  And print value of "enteredValue"
  And go back
  And wait 2 secs
#enter "<string>" into field on the left of <ordinal> "<string>" with exact phrase
  And click "Dynamic Controls"
  And wait 2 secs
  And click "Enable" with exact phrase
  And wait for "enabled!"
  And enter "hello" into field on the left of 1st "Disable" with exact phrase
  And wait 2 secs
  And read value from field on the left of 1st "Disable" and save it as "enteredValue" with exact phrase
  And print value of "enteredValue"
  And go back
  And wait 2 secs