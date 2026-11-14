Feature: slide_swipe

@slide_1
Scenario: slide the "<string>" by <int> points? to the (right|left)
  And wait 3 secs
  And click "Horizontal Slider"
  And wait 2 secs
  And check that screen contains "Set the focus on the slider"
#read the value before sliding
  And read value from the element with id as "range" and save it as "sliderBefore"
  And print value of "sliderBefore"
#slide the "<string>" by <int> points? to the right
  And slide the "Horizontal Slider" by 50 points to the right
  And wait 2 secs
  And read value from the element with id as "range" and save it as "sliderAfterRight"
  And print value of "sliderAfterRight"

@swipe_1
Scenario: swipe (left|right) until screen contains "<string>"
  And wait 3 secs
  And click "Large & Deep DOM"
  And wait 2 secs
  And check that screen contains "Large & Deep DOM"
#swipe (left|right) until screen contains "<string>" (right)
  And swipe right until screen contains "50.50"
  And wait 2 secs
  And check that screen contains "50.50"

@swipe_2
Scenario: swipe left until screen contains "<string>"
  And wait 3 secs
  And click "Large & Deep DOM"
  And wait 2 secs
  And check that screen contains "Large & Deep DOM"
#swipe (left|right) until screen contains "<string>" (go right first, then come back left)
  And swipe right until screen contains "50.50"
  And wait 2 secs
#swipe (left|right) until screen contains "<string>" (left)
  And swipe left until screen contains "1.1"
  And wait 2 secs
  And check that screen contains "1.1"

@swipe_3
Scenario: swipe (left|right) until screen contains "<string>" with exact phrase
  And wait 3 secs
  And click "Large & Deep DOM"
  And wait 2 secs
  And check that screen contains "Large & Deep DOM"
#swipe (left|right) until screen contains "<string>" with exact phrase (right)
  And swipe right until screen contains "50.50" with exact phrase
  And wait 2 secs
  And check that screen contains "50.50"
#swipe (left|right) until screen contains "<string>" with exact phrase (left)
  And swipe left until screen contains "1.1" with exact phrase
  And wait 2 secs
  And check that screen contains "1.1"
