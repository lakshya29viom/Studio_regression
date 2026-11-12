Feature: app_handling

@regression_9
Scenario: relaunch the app
  check that screen contains "Welcome to the-internet"
#relaunch the app
  relaunch the app
  wait 3 secs
#the home page still works after the relaunch
  check that screen contains "Welcome to the-internet"
  click "Multiple Windows"
  wait 2 secs
  check that screen contains "Opening a new window"
  go back
  wait 2 secs
  check that screen contains "Welcome to the-internet"

@app_handeling_1
Scenario: restore the app to the foreground (app already in front)
  check that screen contains "Welcome to the-internet"
#restore the app to the foreground
  restore the app to the foreground
  wait 2 secs
#the page is unchanged and still works
  check that screen contains "Welcome to the-internet"
  click "Multiple Windows"
  wait 2 secs
  check that screen contains "Opening a new window"
  go back
  wait 2 secs
  check that screen contains "Welcome to the-internet"
