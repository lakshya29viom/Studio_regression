Feature: app_handling

@regression_9
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

@app_handeling_1
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
