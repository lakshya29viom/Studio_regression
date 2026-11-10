Feature: right click

@regression_3
Scenario: right click
  click "Elements"
  wait 2 secs
  click "Buttons"
  wait 2 secs
  check that screen contains "Right Click Me"
#right click "<string>"
  right click "Right Click Me"
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click "<string>" with exact phrase
  right click "Right Click Me" with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click "<string>" with class "<string>"
  right click "Right Click Me" with class "btn-primary"
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click "<string>" with class "<string>" with exact phrase
  right click "Right Click Me" with class "btn-primary" with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click "<string>" inside <tag>
  right click "Right Click Me" inside button
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click "<string>" inside <tag> with exact phrase
  right click "Right Click Me" inside button with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click "<string>" inside <tag> with class "<string>"
  right click "Right Click Me" inside button with class "btn-primary"
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click "<string>" inside <tag> with class "<string>" with exact phrase
  right click "Right Click Me" inside button with class "btn-primary" with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the <ordinal> "<string>" (2nd "Click Me" is Right Click Me)
  right click on the 2nd "Click Me"
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the <ordinal> "<string>" with exact phrase
  right click on the 1st "Right Click Me" with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the <ordinal> "<string>" with class "<string>"
  right click on the 1st "Right Click Me" with class "btn-primary"
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the <ordinal> "<string>" with class "<string>" with exact phrase
  right click on the 1st "Right Click Me" with class "btn-primary" with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the <ordinal> "<string>" inside <tag>
  right click on the 1st "Right Click Me" inside button
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the <ordinal> "<string>" inside <tag> with exact phrase
  right click on the 1st "Right Click Me" inside button with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the <ordinal> "<string>" inside <tag> with class "<string>"
  right click on the 1st "Right Click Me" inside button with class "btn-primary"
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the <ordinal> "<string>" inside <tag> with class "<string>" with exact phrase
  right click on the 1st "Right Click Me" inside button with class "btn-primary" with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the element with id as "<string>"
  right click on the element with id as "rightClickBtn"
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the element with id as "<string>" at index <int>
  right click on the element with id as "rightClickBtn" at index 1
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the element with class "<string>" at index <int> (index 2 is Right Click Me)
  right click on the element with class "btn-primary" at index 2
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the element to the above of <ordinal> "<string>" (3rd "Click Me" is Click Me, above it is Right Click Me)
  right click on the element to the above of 3rd "Click Me"
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the element to the below of "<string>"
  right click on the element to the below of "Double Click Me"
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the element to the below of <ordinal> "<string>"
  right click on the element to the below of 1st "Double Click Me"
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the element to the below of "<string>" with exact phrase
  right click on the element to the below of "Double Click Me" with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
#right click on the element to the below of <ordinal> "<string>" with exact phrase
  right click on the element to the below of 1st "Double Click Me" with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs


  
@right_click_1
Scenario: right click on the element to the above of "<string>" with exact phrase
  right click on the element to the above of "Click Me" with exact phrase
  wait 2 secs
  check that screen contains "You have done a right click"
  go back
  wait 2 secs
  click "Buttons"
  wait 2 secs
