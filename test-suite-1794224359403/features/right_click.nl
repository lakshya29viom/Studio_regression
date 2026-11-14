Feature: right click

@regression_2
Scenario: right click
  And click "Elements"
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
  And check that screen contains "Right Click Me"
#right click "<string>"
  And right click "Right Click Me"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click "<string>" with exact phrase
  And right click "Right Click Me" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click "<string>" with class "<string>"
  And right click "Right Click Me" with class "btn-primary"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click "<string>" with class "<string>" with exact phrase
  And right click "Right Click Me" with class "btn-primary" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click "<string>" inside <tag>
  And right click "Right Click Me" inside button
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click "<string>" inside <tag> with exact phrase
  And right click "Right Click Me" inside button with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click "<string>" inside <tag> with class "<string>"
  And right click "Right Click Me" inside button with class "btn-primary"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click "<string>" inside <tag> with class "<string>" with exact phrase
  And right click "Right Click Me" inside button with class "btn-primary" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the <ordinal> "<string>" (2nd "Click Me" is Right Click Me)
  And right click on the 2nd "Click Me"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the <ordinal> "<string>" with exact phrase
  And right click on the 1st "Right Click Me" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the <ordinal> "<string>" with class "<string>"
  And right click on the 1st "Right Click Me" with class "btn-primary"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the <ordinal> "<string>" with class "<string>" with exact phrase
  And right click on the 1st "Right Click Me" with class "btn-primary" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the <ordinal> "<string>" inside <tag>
  And right click on the 1st "Right Click Me" inside button
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the <ordinal> "<string>" inside <tag> with exact phrase
  And right click on the 1st "Right Click Me" inside button with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the <ordinal> "<string>" inside <tag> with class "<string>"
  And right click on the 1st "Right Click Me" inside button with class "btn-primary"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the <ordinal> "<string>" inside <tag> with class "<string>" with exact phrase
  And right click on the 1st "Right Click Me" inside button with class "btn-primary" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element with id as "<string>"
  And right click on the element with id as "rightClickBtn"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element with id as "<string>" at index <int>
  And right click on the element with id as "rightClickBtn" at index 1
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element with class "<string>" at index <int> (index 2 is Right Click Me)
  And right click on the element with class "btn-primary" at index 2
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element to the above of <ordinal> "<string>" (3rd "Click Me" is Click Me, above it is Right Click Me)
  And right click on the element to the above of 3rd "Click Me"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element to the above of "<string>" with exact phrase
  And right click on the element to the above of "Click Me" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element to the above of <ordinal> "<string>" with exact phrase
  And right click on the element to the above of 1st "Click Me" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element to the below of "<string>"
  And right click on the element to the below of "Double Click Me"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element to the below of <ordinal> "<string>"
  And right click on the element to the below of 1st "Double Click Me"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element to the below of "<string>" with exact phrase
  And right click on the element to the below of "Double Click Me" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element to the below of <ordinal> "<string>" with exact phrase
  And right click on the element to the below of 1st "Double Click Me" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element contains desc as "<string>" (may be mobile-only)
  And right click on the element contains desc as "Right Click Me"
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#right click on the element contains desc as "<string>" at index <int> (may be mobile-only)
  And right click on the element contains desc as "Right Click Me" at index 1
  And wait 2 secs
  And check that screen contains "You have done a right click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs