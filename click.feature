Feature: click

@regression
Scenario: click
#click "<string>"
  click "A/B Testing"
  wait 2 secs
  check that screen contains "A/B Test"
  go back
  wait 2 secs
#click "<string>" with exact phrase
  click "Dropdown" with exact phrase
  wait 2 secs
  check that screen contains "Dropdown List"
  go back
  wait 2 secs
#click on the <ordinal> "<string>" (2nd)
  click on the 2nd "Dynamic"
  wait 2 secs
  check that screen contains "Dynamic Controls"
  go back
  wait 2 secs
#click "<string>" inside a
  click "Autocomplete" inside a
  wait 2 secs
  check that screen contains "Autocomplete"
  go back
  wait 2 secs
#click on the element to the right of "<string>"
  click on the element to the right of "A/B Testing"
  wait 2 secs
  check that screen contains "Dropdown"
  wait 2 secs
  go back
  wait 2 secs
#click on the element to the above of "<string>"
  click on the element to the above of "Accessibility Issues"
  wait 2 secs
  check that screen contains "A/B Test"
  go back
  wait 2 secs
#click on the element to the below of "<string>"
  click on the element to the below of "A/B Testing"
  wait 2 secs
  check that screen contains "Accessibility Issues"
  go back
  wait 2 secs
#click on the element to the right of <ordinal> "<string>"
  click on the element to the right of 2nd "Dynamic"
  wait 2 secs
  check that screen contains "Key Presses"
  go back
  wait 2 secs
#click on the element to the right of <ordinal> "<string>" with exact phrase
  click on the element to the right of 2nd "Dropdown" with exact phrase
  wait 2 secs
  check that screen contains "JavaScript Alerts"
  go back
  wait 2 secs
#click in web table with id as "<string>" where column <int> contains "<string>" then column <int>
  click "Sortable Data Tables"
  wait 2 secs
  print debug contents of web table with id as "table1"
  click in web table with id as "table1" where column 1 contains "Smith" then column 6
  print debug contents of web table with id as "table1"
  wait 3 secs
#click in web table with id as "<string>" where column <int> equals "<string>" then column <int>
  click in web table with id as "table1" where column 1 equals "Doe" then column 6
  wait 2 secs
#click in web table with class "<string>" where column <int> equals "<string>" then column <int>
  click in web table with class "tablesorter" where column 4 equals "$50.00" then column 6
  wait 2 secs
#click in web table with text "<string>" where column <int> equals "<string>" then column <int>
  click in web table with text "Email" where column 3 equals "jdoe@hotmail.com" then column 6
  wait 2 secs

@click_1
Scenario: click on the element to the left of "<string>"
  click on the element to the left of "Dropdown"
  wait 2 secs
  check that screen contains "A/B Test"
  go back
  wait 2 secs

@click_2
Scenario: click on the element to the left of "<string>" with exact phrase
  click on the element to the left of "Shadow DOM" with exact phrase
  wait 2 secs
  check that screen contains "Deep DOM"
  go back
  wait 2 secs
