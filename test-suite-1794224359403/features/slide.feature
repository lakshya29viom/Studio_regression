Feature: slide

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
  