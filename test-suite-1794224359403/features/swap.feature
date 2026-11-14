Feature: swipe


@regression_12
Scenario: swipe (left|right) until screen contains "<string>"
  And wait 3 secs
  And click "Large & Deep DOM"
  And wait 2 secs
  And check that screen contains "Large & Deep DOM"
#swipe (left|right) until screen contains "<string>" (right)
  And swipe right until screen contains "50.50"
  And wait 2 secs
  And check that screen contains "50.50"
#swipe (left|right) until screen contains "<string>" (left)
  And swipe left until screen contains "1.1"
  And wait 2 secs
  And check that screen contains "1.1"
  And swipe right until screen contains "50.50" with exact phrase
  And wait 2 secs
  And check that screen contains "50.50"
#swipe (left|right) until screen contains "<string>" with exact phrase (left)
  And swipe left until screen contains "1.1" with exact phrase
  And wait 2 secs
  And check that screen contains "1.1"
