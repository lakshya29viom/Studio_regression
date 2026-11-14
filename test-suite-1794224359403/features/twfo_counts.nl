Feature: twfo_counts

#Run this file in a fresh browser: the first count is 1. If your runner shares the browser with file 1, add 2 to every tab count below.

@twfo
Scenario: get tab count and save it as "<string>"
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Multiple Windows"
  And wait 2 secs
  And check that screen contains "Opening a new window"
  And get tab count and save it as "tabCountBefore"
  And print value of "tabCountBefore"
#expect: 1
  And check that variable {tabCountBefore} is equals to "1" and continue
  And click "Click Here"
  And wait 2 secs
  And get tab count and save it as "tabCountAfter"
  And print value of "tabCountAfter"
#expect: 2
  And check that variable {tabCountAfter} is equals to "2" and continue

@twfo
Scenario: get window count and save it as "<string>"
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Multiple Windows"
  And wait 2 secs
  And check that screen contains "Opening a new window"
  And get tab count and save it as "tabCountBeforeW"
  And print value of "tabCountBeforeW"
#expect: 2 (the scenario above left its tab open)
  And check that variable {tabCountBeforeW} is equals to "2" and continue
  And get window count and save it as "windowCountBefore"
  And print value of "windowCountBefore"
#expect: 2 (the window count is the same as the tab count)
  And check that variable {windowCountBefore} is equals to "2" and continue
  And click "Click Here"
  And wait 2 secs
  And get tab count and save it as "tabCountAfterW"
  And print value of "tabCountAfterW"
#expect: 3
  And check that variable {tabCountAfterW} is equals to "3" and continue
  And get window count and save it as "windowCountAfter"
  And print value of "windowCountAfter"
#expect: 3
  And check that variable {windowCountAfter} is equals to "3" and continue

@twfo
Scenario: enable auto close for new tabs (a tab on another domain is closed)
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And enable auto close for new tabs
  And click "Elemental Selenium" inside a
  And wait 3 secs
  And get tab count and save it as "tabCountAutoClose"
  And print value of "tabCountAutoClose"
#expect: 3 (the new tab is closed, so the count does not change)
  And check that variable {tabCountAutoClose} is equals to "3" and continue

@twfo
Scenario: disable auto close for new tabs (a tab on another domain stays open)
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And disable auto close for new tabs
  And click "Elemental Selenium" inside a
  And wait 3 secs
  And get tab count and save it as "tabCountNoAutoClose"
  And print value of "tabCountNoAutoClose"
#expect: 4 (the new tab stays open)
  And check that variable {tabCountNoAutoClose} is equals to "4" and continue
  And enable auto close for new tabs

@twfo
Scenario: allow domain "<string>" (partial match)
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And allow domain "elementalselenium"
  And click "Elemental Selenium" inside a
  And wait 3 secs
  And get tab count and save it as "tabCountAllowPartial"
  And print value of "tabCountAllowPartial"
#expect: 5 (the new tab stays open because its domain is allowed)
  And check that variable {tabCountAllowPartial} is equals to "5" and continue

@twfo
Scenario: allow domain "<string>" (exact domain)
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And allow domain "saucelabs.com"
  And click "Sauce Labs" inside a
  And wait 3 secs
  And get tab count and save it as "tabCountAllowExact"
  And print value of "tabCountAllowExact"
#expect: 6 (the new tab stays open because its domain is allowed)
  And check that variable {tabCountAllowExact} is equals to "6" and continue

@twfo
Scenario: press COMMAND then w to close the last tab (testing the idea, it may close nothing)
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#switch to last opened tab (the saucelabs.com tab from the scenario above)
  And switch to last opened tab
  And wait 2 secs
#press COMMAND
  And press COMMAND
#press w (a second key press, not a chord, and a browser shortcut may not reach the page at all)
  And press w
  And wait 2 secs
  And switch to main tab
  And wait 2 secs
  And get tab count and save it as "tabCountAfterPress"
  And print value of "tabCountAfterPress"
#expect: 5 if the keys closed the tab. 6 means press cannot close tabs.
  And check that variable {tabCountAfterPress} is equals to "5" and continue