Feature: assertions

@assertions
Scenario: assertions that passed
#check that "<string>" is a (file|directory)[ and continue]
  And check that "/etc/hosts" is a file
  And check that "/tmp" is a directory
  And check that "/Users" is a directory and continue
  And check that "/etc/hosts" is a file and continue
#check that file "<string>" (does not exist|exists)[ and continue]
  And check that file "/etc/hosts" exists
  And check that file "/Users" exists
  And check that file "/tmp/no_such_file_12345.txt" does not exist
  And check that file "/etc/hosts" exists and continue
  And check that file "/tmp/no_such_file_12345.txt" does not exist and continue
#check that file "<string>" contains "<string>" [ and continue]
  And check that file "/etc/hosts" contains "localhost"
  And check that file "/etc/hosts" contains "localhost" and continue
#check that file "<string>" has size (equals|greater than|less than) "<string>" [ (bytes|B|KB|MB|GB) ]
  And check that file "/etc/hosts" has size greater than "1"
  And check that file "/etc/hosts" has size greater than "1" bytes
  And check that file "/etc/hosts" has size greater than "1" B
  And check that file "/etc/hosts" has size less than "1" MB
  And check that file "/etc/hosts" has size less than "100" KB and continue
#check that file "<string>" is [ not ] empty [ and continue]
  And check that file "/etc/hosts" is not empty
  And check that file "/Users" is not empty
  And check that file "/etc/hosts" is not empty and continue
#check that "<string>" (foreground|background) color is "<string>" [ with exact phrase] [ and save it as "<string>" ] [ and continue]
  And check that "Elemental Selenium" foreground color is "blue"
  And check that "Elemental Selenium" foreground color is "blue" with exact phrase
  And check that "Sauce Labs" foreground color is "blue" with exact phrase and save it as "isBlue" and continue
  And print value of "isBlue"
#check that "<string>" (is a link|is not a link)[ with exact phrase] [ and continue]
  And check that "Checkboxes" is a link
  And check that "Welcome to the-internet" is not a link
  And check that "Checkboxes" is a link with exact phrase
  And check that "Welcome to the-internet" is not a link with exact phrase
  And check that "Elemental Selenium" is a link and continue
  And check that "Powered by" is not a link and continue
  And check that "Sauce Labs" is a link with exact phrase and continue
#check that variable <string> (contains|is numerically less than|is numerically greater than|is equals to|is not equals to) "<string>" [ with exact phrase] [ and continue]
  And get tab count and save it as "tabCount"
  And print value of "tabCount"
  And check that variable {tabCount} is equals to "1"
  And check that variable {tabCount} is not equals to "2"
  And check that variable {tabCount} is numerically less than "5"
  And check that variable {tabCount} is numerically greater than "0"
  And check that variable {tabCount} is not equals to "3" and continue
  And check that variable {tabCount} is numerically less than "5" with exact phrase and continue
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And read value from "Radio Buttons" and save it as "pageTitle"
  And print value of "pageTitle"
  And check that variable {pageTitle} contains "Radio"
  And check that variable {pageTitle} is equals to "Radio Buttons"
  And check that variable {pageTitle} is not equals to "Checkboxes"
  And check that variable {pageTitle} contains "Radio Buttons" with exact phrase
  And check that variable {pageTitle} is equals to "Radio Buttons" with exact phrase
  And check that variable {pageTitle} contains "Radio" and continue
  And check that variable {pageTitle} is not equals to "Checkboxes" and continue
  And check that variable {pageTitle} contains "Radio Buttons" with exact phrase and continue
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#check that screen (contains|does not contain) "<string>" [ with exact phrase] [ and save it as "<string>" ] [ and continue]
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that screen contains "Radio Buttons"
  And check that screen does not contain "Basketball"
  And check that screen contains "Favorite color" with exact phrase
  And check that screen does not contain "Basketball" with exact phrase
  And check that screen contains "Favorite sport" and continue
  And check that screen does not contain "Hockey (available)" and continue
  And check that screen contains "Favorite sport" with exact phrase and save it as "foundSport"
  And print value of "foundSport"
  And check that variable {foundSport} is equals to "true" and continue
  And check that screen does not contain "Basketball" and save it as "foundBasketball"
  And print value of "foundBasketball"
  And check that variable {foundBasketball} is equals to "false" and continue
  And check that screen contains "Favorite color" with exact phrase and save it as "foundColor" and continue
  And print value of "foundColor"
  And check that variable {foundColor} is equals to "true" and continue
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#check that file contains "<string>" [ and continue]
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that screen contains "Favorite color"
  And check that file contains "Favorite color"
  And check that file contains "Favorite sport" and continue
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#check that web table "<string>" where column <int> (contains|equals) "<string>" then column <int> (contains|equals) "<string>" [ and continue]
  And click "Sortable Data Tables" with exact phrase
  And wait 2 secs
  And check that screen contains "Data Tables"
  And check that web table "#table1" where column 1 contains "Smith" then column 2 contains "John"
  And check that web table "#table1" where column 1 equals "Bach" then column 4 equals "$51.00"
  And check that web table "#table1" where column 3 contains "jdoe" then column 4 equals "$100.00"
  And check that web table "#table1" where column 1 equals "Conway" then column 2 contains "Tim" and continue
  And check that web table ".tablesorter" where column 1 contains "Smith" then column 3 contains "jsmith@gmail.com"
  And check that web table "xpath://table[@id='table1']" where column 2 equals "Frank" then column 3 contains "fbach"
  And check that web table "Last Name" where column 1 contains "Smith" then column 2 contains "John"
  And check that web table with id as "table1" where column 1 contains "Doe" then column 5 contains "jdoe.com"
  And check that web table with class "tablesorter" where column 1 equals "Smith" then column 4 equals "$50.00"
  And check that web table with text "Last Name" where column 1 contains "Conway" then column 3 contains "tconway" and continue
  And check that web table with id as "table1" where column 1 equals "Bach" then column 2 equals "Frank" and continue
  And read value from "$100.00" and save it as "expectedDue"
  And print value of "expectedDue"
  And check that web table "#table1" where column 1 equals "Doe" then column 4 equals "{expectedDue}"
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#check that checkbox "<string>" is (checked|unchecked)[ with exact phrase]
  And click "Large Form" with exact phrase
  And wait 2 secs
  And check that screen contains "A long form with many kinds of fields"
  And check that checkbox "I accept the terms" is unchecked
  And click "I accept the terms"
  And wait 2 secs
  And check that checkbox "I accept the terms" is checked
  And check that checkbox "I accept the terms" is checked with exact phrase
  And click "I accept the terms"
  And wait 2 secs
  And check that checkbox "I accept the terms" is unchecked with exact phrase
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#check that radio button "<string>" is (selected|not selected)[ with exact phrase]
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that screen contains "Favorite color"
  And check that radio button "Blue" is selected
  And check that radio button "Red" is not selected
  And check that radio button "Blue" is selected with exact phrase
  And check that radio button "Green" is not selected with exact phrase
  And click "Red" inside label
  And wait 2 secs
  And check that radio button "Red" is selected
  And check that radio button "Blue" is not selected
  And check that screen contains "Color: red, Sport: none"
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that radio button "Football" is not selected
  And check that radio button "Hockey (not available)" is not selected
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#check that button "<string>" is (enabled|disabled)[ with exact phrase]
  And click "Dynamic Controls" with exact phrase
  And wait 2 secs
  And check that screen contains "This example demonstrates when elements"
  And check that button "Enable" is enabled
  And check that button "Remove" is enabled
  And check that button "Remove" is enabled with exact phrase
  And click "Enable" inside button with exact phrase
  And check that button "Enable" is disabled
  And wait 5 secs
  And check that button "Disable" is enabled with exact phrase
  And check that screen contains "It's enabled!"
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#check that screen (contains|does not contain) following [ and save it as "<string>" ] [ and continue]
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that screen contains following and continue
    | Radio Buttons |
    | Favorite color |
  And check that screen contains following
    | Radio Buttons |
    | Favorite color |
    | Favorite sport |
  And check that screen does not contain following
    | Basketball |
    | Golf |
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#check that "<string>" appears [ (at least |at most ) ] <int> time [s] on screen
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that screen contains "Favorite color"
  And check that "Favorite" appears at least 1 time on screen
  And check that "Favorite" appears at most 2 times on screen
#check that "<string>" appears <int> time [s] on screen [ and save it as "<string>" ]
  And check that "Favorite" appears 1 time on screen
  And check that "Favorite" appears 1 time on screen and save it as "favoriteCount"
  And print value of "favoriteCount"
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#check that "<string>" (foreground|background) color is "<string>" [ and save it as "<string>" ] [ and continue] (error message)
  And click "Form Authentication" with exact phrase
  And wait 2 secs
  And check that screen contains "Login Page"
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "Your username is invalid!"
  And check that "Your username is invalid!" background color is "red"
  And check that "Your username is invalid!" foreground color is "white"
  And check that "Your username is invalid!" background color is "red" and save it as "isRed"
  And print value of "isRed"
  And check that "Your username is invalid!" foreground color is "white" and continue
  And check that "Your username is invalid!" background color is "red" and continue
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#check that "<string>" (foreground|background) color is "<string>" [ and save it as "<string>" ] [ and continue] (success message)
  And click "Form Authentication" with exact phrase
  And wait 2 secs
  And check that screen contains "Login Page"
  And enter "tomsmith" into "Username" with exact phrase
  And enter "SuperSecretPassword!" into "Password" with exact phrase
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "You logged into a secure area!"
  And check that "You logged into a secure area!" background color is "green"
  And check that "You logged into a secure area!" background color is "green" and save it as "isGreen" and continue
  And print value of "isGreen"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

@check_1
Scenario: check that checkbox with text next to the box and no label element 
#the text "checkbox 1" is plain text next to the box, not a <label>. "checkbox 2" is checked on the page but the step reports it as not checked (warning).
  And click on the element with class "home-link"
  And wait 2 secs
  And click "Checkboxes" with exact phrase
  And wait 2 secs
  And check that screen contains "checkbox 1"
  And check that checkbox "checkbox 1" is unchecked
  And check that checkbox "checkbox 2" is checked
  And check that checkbox "checkbox 1" is unchecked with exact phrase
  And check that checkbox "checkbox 2" is checked with exact phrase
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

@check_2
Scenario: check that variable contains either of the following 
#check that variable <string> contains either of the following [ with exact phrase] [ and continue]
#the first step throws UnsupportedOperationException (AssertSteps line 657), so the other three are skipped and have not been tested
  And click on the element with class "home-link"
  And wait 2 secs
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And read value from "Radio Buttons" and save it as "pageTitleList"
  And print value of "pageTitleList"
  And check that variable {pageTitleList} contains either of the following and continue
    | Radio |
    | Checkbox |
  And check that variable {pageTitleList} contains either of the following with exact phrase and continue
    | Radio Buttons |
    | Checkboxes |
  And check that variable {pageTitleList} contains either of the following
    | Radio |
    | Checkbox |
  And check that variable {pageTitleList} contains either of the following with exact phrase
    | Radio Buttons |
    | Checkboxes |

@check_3
Scenario: check that screen contains or does not contain following with and save it as (saves null)
#the list form with "and save it as" saves null, the single text form saves true or false
  And click on the element with class "home-link"
  And wait 2 secs
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that screen contains following and save it as "listResult" and continue
    | Radio Buttons |
    | Favorite color |
  And print value of "listResult"
  And check that variable {listResult} is equals to "true" and continue
  And check that screen does not contain following and save it as "listResultMissing" and continue
    | Basketball |
    | Golf |
  And print value of "listResultMissing"
  And check that variable {listResultMissing} is equals to "false" and continue
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

@check_4
Scenario: check that text appears a number of times on screen 
#"Favorite color" and "Favorite sport" are both on the page, but the step counts "Favorite" 1 time, not 2
  And click on the element with class "home-link"
  And wait 2 secs
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that screen contains "Favorite color"
  And check that "Favorite" appears 2 times on screen

@check_5
Scenario: check color with exact phrase on the error message 
  And click on the element with class "home-link"
  And wait 2 secs
  And click "Form Authentication" with exact phrase
  And wait 2 secs
  And check that screen contains "Login Page"
  And click "Login" with exact phrase
  And wait 2 secs
  And check that screen contains "Your username is invalid!"
  And check that "Your username is invalid!" background color is "red" with exact phrase

@check_6
Scenario: check that text appears 1 time with exact phrase and save it as
#"Red" is on the page (radio label) but with exact phrase the count is 0
  And click on the element with class "home-link"
  And wait 2 secs
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that screen contains "Favorite color"
  And check that "Red" appears 1 time on screen with exact phrase and save it as "redCount"
  And print value of "redCount"

@check_7
Scenario: check that API response contains a substring on a 404 response
  And compose a get request to "https://dummyjson.com/products/0" with headers
    | Accept | application/json |
  And execute and save the response as "missingResponse1"
  And print value of "missingResponse1"
  And check that response {missingResponse1} has "404" as status code
  And check that API response {missingResponse1} contains "Product with id '0' not found" at "$.message"
  And check that API response {missingResponse1} contains "not found" at "$.message"
  And check that response {missingResponse1} has "404" as status code

@check_8
Scenario: check that API response contains a substring or a wrong value on a 200 response 
  And compose a get request to "https://dummyjson.com/users/1" with headers
    | Accept | application/json |
  And execute and save the response as "userResponseControl"
  And check that response {userResponseControl} has "200" as status code
  And check that API response {userResponseControl} contains "emilys" at "$.username"
  And check that API response {userResponseControl} contains "emil" at "$.username"
  And check that API response {userResponseControl} contains "wrongname" at "$.username"
  And check that response {userResponseControl} has "200" as status code
