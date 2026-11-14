Feature: double click

@regression_2
Scenario: double click
  And click "Elements"
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
  And check that screen contains "Double Click Me"
#double click "<string>"
  And double click "Double Click Me"
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click "<string>" with exact phrase
  And double click "Double Click Me" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click "<string>" with class "<string>"
  And double click "Double Click Me" with class "btn-primary"
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click "<string>" with class "<string>" with exact phrase
  And double click "Double Click Me" with class "btn-primary" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click "<string>" inside <tag>
  And double click "Double Click Me" inside button
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click "<string>" inside <tag> with exact phrase
  And double click "Double Click Me" inside button with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click "<string>" inside <tag> with class "<string>"
  And double click "Double Click Me" inside button with class "btn-primary"
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click "<string>" inside <tag> with class "<string>" with exact phrase
  And double click "Double Click Me" inside button with class "btn-primary" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the <ordinal> "<string>" (1st "Click Me" is Double Click Me)
  And double click on the 1st "Click Me"
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the <ordinal> "<string>" with exact phrase
  And double click on the 1st "Double Click Me" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the <ordinal> "<string>" with class "<string>"
  And double click on the 1st "Double Click Me" with class "btn-primary"
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the <ordinal> "<string>" with class "<string>" with exact phrase
  And double click on the 1st "Double Click Me" with class "btn-primary" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the <ordinal> "<string>" inside <tag>
  And double click on the 1st "Double Click Me" inside button
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the <ordinal> "<string>" inside <tag> with exact phrase
  And double click on the 1st "Double Click Me" inside button with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the <ordinal> "<string>" inside <tag> with class "<string>"
  And double click on the 1st "Double Click Me" inside button with class "btn-primary"
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the <ordinal> "<string>" inside <tag> with class "<string>" with exact phrase
  And double click on the 1st "Double Click Me" inside button with class "btn-primary" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the element with id as "<string>"
  And double click on the element with id as "doubleClickBtn"
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the element to the above of "<string>"
  And double click on the element to the above of "Right Click Me"
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the element to the above of <ordinal> "<string>" (2nd "Click Me" is Right Click Me)
  And double click on the element to the above of 2nd "Click Me"
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the element to the above of "<string>" with exact phrase
  And double click on the element to the above of "Right Click Me" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs
#double click on the element to the above of <ordinal> "<string>" with exact phrase
  And double click on the element to the above of 1st "Right Click Me" with exact phrase
  And wait 2 secs
  And check that screen contains "You have done a double click"
  And go back
  And wait 2 secs
  And click "Buttons"
  And wait 2 secs

