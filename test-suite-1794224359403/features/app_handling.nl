@all
Feature: app_handling

#Run these from a fresh browser on the home page. @restore_foreground_2 is last because it opens a tab and
#leaves the browser on the Multiple Windows page if it fails.
#What relaunch the app does not do on web (it keeps open tabs and the current page) is covered by
#problems 3 and 9 in tab_window_frame_problems.feature, so it is not repeated here.

@relaunch_app
Scenario: relaunch the app
  And check that screen contains "Welcome to the-internet"
#relaunch the app
  And relaunch the app
  And wait 3 secs
#the home page still works after the relaunch
  And check that screen contains "Welcome to the-internet"
  And click "Multiple Windows"
  And wait 2 secs
  And check that screen contains "Opening a new window"
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

@restore_foreground_1
Scenario: restore the app to the foreground (app already in front)
  And check that screen contains "Welcome to the-internet"
#restore the app to the foreground
  And restore the app to the foreground
  And wait 2 secs
#the page is unchanged and still works
  And check that screen contains "Welcome to the-internet"
  And click "Multiple Windows"
  And wait 2 secs
  And check that screen contains "Opening a new window"
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"

@restore_foreground_2
Scenario: restore the app to the foreground (new tab in front)
  And click "Multiple Windows"
  And wait 2 secs
  And click "Click Here"
  And wait 2 secs
  And switch to last opened tab
  And wait 2 secs
  And check that screen contains "New Window"
#restore the app to the foreground
  And restore the app to the foreground
  And wait 2 secs
#expect on screen: New Window (the step should not change the tab; if it brings the main tab forward instead, this fails and shows what the step does)
  And check that screen contains "New Window"
  And switch to main tab
  And wait 2 secs
  And go back
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"