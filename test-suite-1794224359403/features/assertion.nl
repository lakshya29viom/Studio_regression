@assertions
Feature: assertions

#Everything runs as one scenario, from the home page in a fresh browser with one tab open.
#Each block opens one page from the home page and ends with go back, which returns to the home page.
#The riskiest blocks are last: a failed hard check stops the rest of the scenario. "and continue" checks are soft: they mark the scenario as a warning and the scenario goes on.

@assertions_1
Scenario: assertions
#---------- check that path is a file or a directory (no page needed, the paths exist on a Mac) ----------
#check that "<string>" is a (file|directory)
  And check that "/etc/hosts" is a file
  And check that "/tmp" is a directory
#check that "<string>" is a (file|directory) and continue
  And check that "/Users" is a directory and continue
  And check that "/etc/hosts" is a file and continue

#---------- check that variable (a number and a text) ----------
  And get tab count and save it as "tabCount"
  And print value of "tabCount"
#check that variable <string> is equals to "<string>"
  And check that variable {tabCount} is equals to "1"
#check that variable <string> is not equals to "<string>"
  And check that variable {tabCount} is not equals to "2"
#check that variable <string> is numerically less than "<string>"
  And check that variable {tabCount} is numerically less than "5"
#check that variable <string> is numerically greater than "<string>"
  And check that variable {tabCount} is numerically greater than "0"
#check that variable <string> contains "<string>"
  And check that variable {tabCount} contains "1"
#with exact phrase
  And check that variable {tabCount} is equals to "1" with exact phrase
  And check that variable {tabCount} contains "1" with exact phrase
#and continue
  And check that variable {tabCount} is numerically less than "5" with exact phrase and continue
  And check that variable {tabCount} is not equals to "3" and continue
#a text variable
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And read value from "Radio Buttons" and save it as "pageTitle"
  And print value of "pageTitle"
  And check that variable {pageTitle} contains "Radio"
  And check that variable {pageTitle} is equals to "Radio Buttons" with exact phrase
  And check that variable {pageTitle} is not equals to "Checkboxes" and continue
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

#---------- check that screen contains or does not contain text ----------
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
#check that screen (contains|does not contain) "<string>"
  And check that screen contains "Radio Buttons"
  And check that screen does not contain "Basketball"
#with exact phrase
  And check that screen contains "Favorite color" with exact phrase
  And check that screen does not contain "Basketball" with exact phrase
#and continue
  And check that screen contains "Favorite sport" and continue
  And check that screen does not contain "Hockey (available)" and continue
#and save it as "<string>"
  And check that screen contains "Favorite sport" with exact phrase and save it as "foundSport"
  And print value of "foundSport"
  And check that screen does not contain "Basketball" and save it as "foundBasketball"
  And print value of "foundBasketball"
#and save it as "<string>" and continue
  And check that screen contains "Favorite color" with exact phrase and save it as "foundColor" and continue
  And print value of "foundColor"
#expect in report: what was saved for each check, to see what the save form stores
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

#---------- check that text appears a number of times on screen ----------
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that screen contains "Favorite color"
#check that "<string>" appears <int> time[s] on screen (the two legends are "Favorite color" and "Favorite sport")
  And check that "Favorite" appears 2 times on screen
#check that "<string>" appears at least <int> time[s] on screen
  And check that "Favorite" appears at least 1 time on screen
#check that "<string>" appears at most <int> time[s] on screen
  And check that "Favorite" appears at most 2 times on screen
#with exact phrase and save it as "<string>"
  And check that "Red" appears 1 time on screen with exact phrase and save it as "redCount"
  And print value of "redCount"
#expect in report: 1
#and save it as "<string>"
  And check that "Favorite" appears 2 times on screen and save it as "favoriteCount"
  And print value of "favoriteCount"
#expect in report: 2
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

#---------- check that checkbox (a real label, clicked to toggle) ----------
  And click "Large Form" with exact phrase
  And wait 2 secs
  And check that screen contains "A long form with many kinds of fields"
#check that checkbox "<string>" is (checked|unchecked)
#expect: unchecked at the start
  And check that checkbox "I accept the terms" is unchecked
#click the label: this ticks the box
  And click "I accept the terms"
  And wait 2 secs
  And check that checkbox "I accept the terms" is checked
#with exact phrase
  And check that checkbox "I accept the terms" is checked with exact phrase
#click the label again: this unticks the box
  And click "I accept the terms"
  And wait 2 secs
  And check that checkbox "I accept the terms" is unchecked with exact phrase
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

#---------- check that radio button (real labels, clicked to select) ----------
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that screen contains "Favorite color"
#check that radio button "<string>" is (selected|not selected)
#expect: Blue is selected at the start
  And check that radio button "Blue" is selected
  And check that radio button "Red" is not selected
#with exact phrase
  And check that radio button "Blue" is selected with exact phrase
  And check that radio button "Green" is not selected with exact phrase
#click the Red label: Red becomes selected and Blue is not selected any more
  And click "Red" inside label
  And wait 2 secs
  And check that radio button "Red" is selected
  And check that radio button "Blue" is not selected
  And check that screen contains "Color: red, Sport: none"
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

#---------- check that checkbox and radio button with text next to the box and no label element (may fail) ----------
  And click "Checkboxes" with exact phrase
  And wait 2 secs
  And check that screen contains "checkbox 1"
#expect: checkbox 1 starts unchecked and checkbox 2 starts checked
  And check that checkbox "checkbox 1" is unchecked
  And check that checkbox "checkbox 2" is checked
  And check that checkbox "checkbox 1" is unchecked with exact phrase
  And check that checkbox "checkbox 2" is checked with exact phrase
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
  And check that radio button "Football" is not selected
#this one is disabled, so it cannot be selected
  And check that radio button "Hockey (not available)" is not selected
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

#---------- check that button is enabled or disabled (the disabled check depends on timing) ----------
  And click "Dynamic Controls" with exact phrase
  And wait 2 secs
  And check that screen contains "This example demonstrates when elements"
#check that button "<string>" is (enabled|disabled)
  And check that button "Enable" is enabled
  And check that button "Remove" is enabled
#with exact phrase
  And check that button "Remove" is enabled with exact phrase
#click: the Enable button stays disabled for about 3 seconds while the page loads (inside button, so the heading "Enable/disable" is not clicked)
  And click "Enable" inside button with exact phrase
#expect: disabled (this check must run within the 3 seconds)
  And check that button "Enable" is disabled
  And wait 5 secs
#expect: after the wait the button text is "Disable" and the button is enabled again
  And check that button "Disable" is enabled with exact phrase
  And check that screen contains "It's enabled!"
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

#---------- check that screen contains or does not contain following (the list layout is a guess) ----------
  And click "Radio Buttons" with exact phrase
  And wait 2 secs
#check that screen contains following (one text per row under the step)
  And check that screen contains following
    | Radio Buttons |
    | Favorite color |
    | Favorite sport |
#check that screen does not contain following
  And check that screen does not contain following
    | Basketball |
    | Golf |
#and continue
  And check that screen contains following and continue
    | Radio Buttons |
    | Favorite color |
#and save it as "<string>"
  And check that screen contains following and save it as "listResult"
    | Radio Buttons |
    | Favorite color |
  And print value of "listResult"
  And check that screen does not contain following and save it as "listResultMissing" and continue
    | Basketball |
    | Golf |
  And print value of "listResultMissing"

#---------- check that variable contains either of the following (the list layout is a guess) ----------
  And read value from "Radio Buttons" and save it as "pageTitleList"
  And print value of "pageTitleList"
#check that variable <string> contains either of the following (the default: any list entry as a substring)
  And check that variable {pageTitleList} contains either of the following
    | Radio |
    | Checkbox |
#with exact phrase (the variable must equal one list entry)
  And check that variable {pageTitleList} contains either of the following with exact phrase
    | Radio Buttons |
    | Checkboxes |
#and continue
  And check that variable {pageTitleList} contains either of the following and continue
    | Radio |
    | Checkbox |
  And check that variable {pageTitleList} contains either of the following with exact phrase and continue
    | Radio Buttons |
    | Checkboxes |
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"