Feature: click

@regression
Scenario: click
#click "<string>"
  And click "A/B Testing"
  And wait 2 secs
  And check that screen contains "A/B Test"
  And go back
  And wait 2 secs
#click "<string>" with exact phrase
  And click "Dropdown" with exact phrase
  And wait 2 secs
  And check that screen contains "Dropdown List"
  And go back
  And wait 2 secs
#click on the <ordinal> "<string>" (2nd)
  And click on the 2nd "Dynamic"
  And wait 2 secs
  And check that screen contains "Dynamic Controls"
  And go back
  And wait 2 secs
#click "<string>" inside a
  And click "Autocomplete" inside a
  And wait 2 secs
  And check that screen contains "Autocomplete"
  And go back
  And wait 2 secs
#click on the element to the right of "<string>"
  And click on the element to the right of "A/B Testing"
  And wait 2 secs
  And check that screen contains "Dropdown"
  And wait 2 secs
  And go back
  And wait 2 secs
#click on the element to the above of "<string>"
  And click on the element to the above of "Accessibility Issues"
  And wait 2 secs
  And check that screen contains "A/B Test"
  And go back
  And wait 2 secs
#click on the element to the below of "<string>"
  And click on the element to the below of "A/B Testing"
  And wait 2 secs
  And check that screen contains "Accessibility Issues"
  And go back
  And wait 2 secs
#click on the element to the right of <ordinal> "<string>"
  And click on the element to the right of 2nd "Dynamic"
  And wait 2 secs
  And check that screen contains "Key Presses"
  And go back
  And wait 2 secs
#click on the element to the right of <ordinal> "<string>" with exact phrase
  And click on the element to the right of 2nd "Dropdown" with exact phrase
  And wait 2 secs
  And check that screen contains "JavaScript Alerts"
  And go back
  And wait 2 secs
#click in web table with id as "<string>" where column <int> contains "<string>" then column <int>
  And click "Sortable Data Tables"
  And wait 2 secs
  And print debug contents of web table with id as "table1"
  And click in web table with id as "table1" where column 1 contains "Smith" then column 6
  And print debug contents of web table with id as "table1"
  And wait 3 secs
#click in web table with id as "<string>" where column <int> equals "<string>" then column <int>
  And click in web table with id as "table1" where column 1 equals "Doe" then column 6
  And wait 2 secs
#click in web table with class "<string>" where column <int> equals "<string>" then column <int>
  And click in web table with class "tablesorter" where column 4 equals "$50.00" then column 6
  And wait 2 secs
#click in web table with text "<string>" where column <int> equals "<string>" then column <int>
  And click in web table with text "Email" where column 3 equals "jdoe@hotmail.com" then column 6
  And wait 2 secs


@click_1
Scenario: click on the element to the left of "<string>"
  And click on the element to the left of "Dropdown"
  And wait 2 secs
  And check that screen contains "A/B Test"
  And go back
  And wait 2 secs

@click_2
Scenario: click on the element to the left of "<string>" with exact phrase
  And click on the element to the left of "Shadow DOM" with exact phrase
  And wait 2 secs
  And check that screen contains "Deep DOM"
  And go back
  And wait 2 secs

@click_3
Scenario: #click "<string>" inside button
  And click "Form Authentication" with exact phrase
  And wait 2 secs
  And check that screen contains "Login Page"
  And click "Login" inside button
  And wait 2 secs