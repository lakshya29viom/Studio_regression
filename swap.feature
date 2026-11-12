Feature: swipe


@regression_12
Scenario: swipe (left|right) until screen contains "<string>"
  wait 3 secs
  click "Large & Deep DOM"
  wait 2 secs
  check that screen contains "Large & Deep DOM"
#swipe (left|right) until screen contains "<string>" (right)
  swipe right until screen contains "50.50"
  wait 2 secs
  check that screen contains "50.50"
#swipe (left|right) until screen contains "<string>" (left)
  swipe left until screen contains "1.1"
  wait 2 secs
  check that screen contains "1.1"
  swipe right until screen contains "50.50" with exact phrase
  wait 2 secs
  check that screen contains "50.50"
#swipe (left|right) until screen contains "<string>" with exact phrase (left)
  swipe left until screen contains "1.1" with exact phrase
  wait 2 secs
  check that screen contains "1.1"
