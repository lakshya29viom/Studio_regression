Feature: double click

@regression_2
Scenario: double click
  click "Elements"
  wait 2 secs
  click "Buttons"
  wait 2 secs
  check that screen contains "Double Click Me"
#double click "<string>"
  double click "Double Click Me"
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click "<string>" with exact phrase
  double click "Double Click Me" with exact phrase
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click "<string>" with class "<string>"
  double click "Double Click Me" with class "btn-primary"
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click "<string>" with class "<string>" with exact phrase
  double click "Double Click Me" with class "btn-primary" with exact phrase
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click "<string>" inside <tag>
  double click "Double Click Me" inside button
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click "<string>" inside <tag> with exact phrase
  double click "Double Click Me" inside button with exact phrase
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click "<string>" inside <tag> with class "<string>"
  double click "Double Click Me" inside button with class "btn-primary"
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click "<string>" inside <tag> with class "<string>" with exact phrase
  double click "Double Click Me" inside button with class "btn-primary" with exact phrase
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the <ordinal> "<string>" (1st "Click Me" is Double Click Me)
  double click on the 1st "Click Me"
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the <ordinal> "<string>" with exact phrase
  double click on the 1st "Double Click Me" with exact phrase
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the <ordinal> "<string>" with class "<string>"
  double click on the 1st "Double Click Me" with class "btn-primary"
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the <ordinal> "<string>" with class "<string>" with exact phrase
  double click on the 1st "Double Click Me" with class "btn-primary" with exact phrase
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the <ordinal> "<string>" inside <tag>
  double click on the 1st "Double Click Me" inside button
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the <ordinal> "<string>" inside <tag> with exact phrase
  double click on the 1st "Double Click Me" inside button with exact phrase
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the <ordinal> "<string>" inside <tag> with class "<string>"
  double click on the 1st "Double Click Me" inside button with class "btn-primary"
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the <ordinal> "<string>" inside <tag> with class "<string>" with exact phrase
  double click on the 1st "Double Click Me" inside button with class "btn-primary" with exact phrase
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the element with id as "<string>"
  double click on the element with id as "doubleClickBtn"
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the element to the above of "<string>"
  double click on the element to the above of "Right Click Me"
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the element to the above of <ordinal> "<string>" (2nd "Click Me" is Right Click Me)
  double click on the element to the above of 2nd "Click Me"
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the element to the above of "<string>" with exact phrase
  double click on the element to the above of "Right Click Me" with exact phrase
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#double click on the element to the above of <ordinal> "<string>" with exact phrase
  double click on the element to the above of 1st "Right Click Me" with exact phrase
  wait 2 secs
  check that screen contains "You have done a double click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs

