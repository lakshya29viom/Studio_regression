@twfo_counts
Feature: twfo_counts

#Run this file in a fresh browser: the first count is 1. If an earlier run left tabs open, add that number to every tab count below.
#The counts rise through the scenario because nothing closes its tabs: 1, 2, then 2, 2, 3, 3, then 3, 4, 5, 6.
#Every count check is a soft check (and continue), so one wrong count does not stop the scenario. The later counts then differ by the same amount.

@twfo_counts_1
Scenario: tab count, window count, auto close and allow domain
#---------- get tab count ----------
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Multiple Windows"
  And wait 2 secs
  And check that screen contains "Opening a new window"
#get tab count and save it as "<string>" (before opening a tab)
  And get tab count and save it as "tabCountBefore"
  And print value of "tabCountBefore"
#expect: 1
  And check that variable {tabCountBefore} is equals to "1" and continue
  And click "Click Here"
  And wait 2 secs
#get tab count and save it as "<string>" (after opening a tab)
  And get tab count and save it as "tabCountAfter"
  And print value of "tabCountAfter"
#expect: 2
  And check that variable {tabCountAfter} is equals to "2" and continue

#---------- get window count ----------
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Multiple Windows"
  And wait 2 secs
  And check that screen contains "Opening a new window"
#get tab count and save it as "<string>" (read next to the window count, to see whether the two differ)
  And get tab count and save it as "tabCountBeforeW"
  And print value of "tabCountBeforeW"
#expect: 2 (the block above left its tab open)
  And check that variable {tabCountBeforeW} is equals to "2" and continue
#get window count and save it as "<string>" (before opening a window)
  And get window count and save it as "windowCountBefore"
  And print value of "windowCountBefore"
#expect: 2 (the window count is the same as the tab count)
  And check that variable {windowCountBefore} is equals to "2" and continue
  And click "Click Here"
  And wait 2 secs
#get tab count and save it as "<string>" (after opening a window)
  And get tab count and save it as "tabCountAfterW"
  And print value of "tabCountAfterW"
#expect: 3
  And check that variable {tabCountAfterW} is equals to "3" and continue
#get window count and save it as "<string>" (after opening a window)
  And get window count and save it as "windowCountAfter"
  And print value of "windowCountAfter"
#expect: 3
  And check that variable {windowCountAfter} is equals to "3" and continue

#---------- enable auto close for new tabs (a tab on another domain is closed) ----------
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#enable auto close for new tabs
  And enable auto close for new tabs
  And click "Elemental Selenium" inside a
  And wait 3 secs
  And get tab count and save it as "tabCountAutoClose"
  And print value of "tabCountAutoClose"
#expect: 3 (the new tab is closed, so the count does not change)
  And check that variable {tabCountAutoClose} is equals to "3" and continue

#---------- disable auto close for new tabs (a tab on another domain stays open) ----------
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#disable auto close for new tabs
  And disable auto close for new tabs
  And click "Elemental Selenium" inside a
  And wait 3 secs
  And get tab count and save it as "tabCountNoAutoClose"
  And print value of "tabCountNoAutoClose"
#expect: 4 (the new tab stays open)
  And check that variable {tabCountNoAutoClose} is equals to "4" and continue
#enable auto close for new tabs (the default again)
  And enable auto close for new tabs

#---------- allow domain (partial match) ----------
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#allow domain "<string>" (auto close is on again, so without this the elementalselenium.com tab would be closed)
  And allow domain "elementalselenium"
  And click "Elemental Selenium" inside a
  And wait 3 secs
  And get tab count and save it as "tabCountAllowPartial"
  And print value of "tabCountAllowPartial"
#expect: 5 (the new tab stays open because its domain is allowed)
  And check that variable {tabCountAllowPartial} is equals to "5" and continue

#---------- allow domain (exact domain) ----------
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
#allow domain "<string>" (a different domain from the block above, so the earlier allow cannot keep this tab open)
  And allow domain "saucelabs.com"
  And click "Sauce Labs" inside a
  And wait 3 secs
  And get tab count and save it as "tabCountAllowExact"
  And print value of "tabCountAllowExact"
#expect: 6 (the new tab stays open because its domain is allowed)
  And check that variable {tabCountAllowExact} is equals to "6" and continue