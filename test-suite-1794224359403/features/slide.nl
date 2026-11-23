@web_remaining @slide
Feature: slide
#STATUS: written only. Not run in Studio. Every step form was matched against the Command Reference v1.9.1 syntax lines
#(prefix match, because the PDF cuts long syntax lines). That proves the wording is documented, not that an element is found.
#PURPOSE: web commands in User Actions that features.zip does not exercise yet:
#  scroll, press (single keys), print debug (short form), read variable and print, click in web table (short form),
#  set location permission, slide (left, and the "slider" form), select option on the left/right, and {variable} in step text.
#APP: the-internet test site as used in features.zip. Only pages and ids that already appear in your files are used:
#  home-link class, "Large & Deep DOM", "Sortable Data Tables" (#table1), "Horizontal Slider" (id range),
#  "Filter examples" box (id example-filter), "Checkboxes", "Dropdown", "Large Form" (Country list).
#RUN: fresh browser on the home page. Tags: @web_remaining runs all, @rem_user_actions this file, or one scenario tag.
#LEFT BEHIND: nothing is saved. The filter box and slider keep a value until the page is reloaded.
#MARKS: @wip = the page, locator or expected value is a guess. @probe = tests what the step does, no known right answer.

@rem_slide_left
Scenario: slide the "<string>" by <int> points to the left
  And click on the element with class "home-link"
  And click "Horizontal Slider"
  And check that screen contains "Set the focus on the slider"
  And slide the "Horizontal Slider" by 50 points to the right
  And read value from the element with id as "range" and save it as "sliderMid"
  And print value of "sliderMid"
#slide the "<string>" by <int> points? to the left
  And slide the "Horizontal Slider" by 25 points to the left
  And read value from the element with id as "range" and save it as "sliderAfterLeft"
  And print value of "sliderAfterLeft"
#unverified: whether a variable inside quotes is resolved by this step. If it is not, the next step fails on the text "{sliderMid}".
  And check that variable {sliderAfterLeft} is not equals to "{sliderMid}" and continue


@rem_slide_slider @wip
Scenario: slide the "<string>" slider (the form without a distance)
#The reference says this form finds the slider by content description, then by id. Your slide_1 is already in the error log,
#so first find out why the "Horizontal Slider" text form fails. Run 37 showed the id "range" fails ("Element with visible text [range] not found"), so the visible text "Horizontal Slider" is used now.
  And click on the element with class "home-link"
  And click "Horizontal Slider"
  And read value from the element with id as "range" and save it as "sliderBeforeForm2"
  And slide the "Horizontal Slider" slider
  And read value from the element with id as "range" and save it as "sliderAfterForm2"
  And print value of "sliderBeforeForm2"
  And print value of "sliderAfterForm2"
  And check that variable {sliderAfterForm2} is not equals to "{sliderBeforeForm2}" and continue

@rem_slide_full @probe
Scenario: does slide by 100 points move the slider at all (run 37: values stayed 0 after 50 right and 25 left)
#If sliderFull is still the same as the starting value, the slide step passes without moving the slider.
  And click on the element with class "home-link"
  And click "Horizontal Slider"
  And read value from the element with id as "range" and save it as "sliderStart"
  And print value of "sliderStart"
  And slide the "Horizontal Slider" by 100 points to the right
  And read value from the element with id as "range" and save it as "sliderFull"
  And print value of "sliderFull"
  And capture screenshot
  And slide the "Horizontal Slider" by 100 points to the left
  And read value from the element with id as "range" and save it as "sliderBack"
  And print value of "sliderBack"
  And capture screenshot
