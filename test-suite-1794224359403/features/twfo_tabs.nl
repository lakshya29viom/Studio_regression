Feature: twfo_tabs

#Run this file in a fresh browser. It leaves 3 tabs open: the main tab, an Elemental Selenium tab (2nd), a New Window tab (3rd).

@twfo
Scenario: switch to the <ordinal> tab, switch to last opened tab and switch to main tab
#reset: back to the home page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Multiple Windows"
  And wait 2 secs
#disable auto close for new tabs (so the Elemental Selenium tab stays open without allow domain)
  And disable auto close for new tabs
#tab 2: the Elemental Selenium site
  And click "Elemental Selenium" inside a
  And wait 3 secs
#tab 3: the New Window page
  And click "Click Here"
  And wait 2 secs
#enable auto close for new tabs (the default again, the tabs already open stay open)
  And enable auto close for new tabs
#the main tab is now a third kind of page: the Checkboxes page
  And click on the element with class "home-link"
  And wait 2 secs
  And click "Checkboxes" with exact phrase
  And wait 2 secs
  And check that screen contains "checkbox 1"
#switch to the <ordinal> tab (2nd, the first tab opened, Elemental Selenium)
  And switch to the 2nd tab
  And wait 2 secs
#expect: text from the footer of elementalselenium.com, which the-internet pages do not have
  And check that screen contains "all rights reserved"
#switch to the <ordinal> tab (3rd, the second tab opened, New Window)
  And switch to the 3rd tab
  And wait 2 secs
  And check that screen contains "New Window"
#switch to last opened tab (go to the 2nd tab first, so this is a real change back to the New Window tab)
  And switch to the 2nd tab
  And wait 2 secs
  And switch to last opened tab
  And wait 2 secs
  And check that screen contains "New Window"
#switch to the <ordinal> tab (1st, the main tab, now on the Checkboxes page)
  And switch to the 1st tab
  And wait 2 secs
  And check that screen contains "checkbox 1"
#switch to main tab (from the New Window tab)
  And switch to the 3rd tab
  And wait 2 secs
  And switch to main tab
  And wait 2 secs
  And check that screen contains "checkbox 1"

@twfo
Scenario: switch to the <ordinal> window and switch to last opened window (the same 3 tabs)
#this scenario reuses the 3 tabs the scenario above left open
  And switch to main tab
  And wait 2 secs
  And check that screen contains "checkbox 1"
#switch to the <ordinal> window (2nd, Elemental Selenium)
  And switch to the 2nd window
  And wait 2 secs
  And check that screen contains "all rights reserved"
#switch to the <ordinal> window (3rd, New Window)
  And switch to the 3rd window
  And wait 2 secs
  And check that screen contains "New Window"
#switch to last opened window (go to the 2nd window first, so this is a real change back to the New Window tab)
  And switch to the 2nd window
  And wait 2 secs
  And switch to last opened window
  And wait 2 secs
  And check that screen contains "New Window"
#switch to the <ordinal> window (1st, the main tab)
  And switch to the 1st window
  And wait 2 secs
  And check that screen contains "checkbox 1"
  And switch to main tab
  And wait 2 secs