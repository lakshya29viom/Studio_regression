@web_remaining @press
Feature: press
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

@rem_press_1
Scenario: press a single character, BACKSPACE and ESCAPE in the filter box
  And click on the element with class "home-link"
  And check that screen contains "Filter examples"
  And click on the element with id as "example-filter"
#press a / press 1 (any single character is documented)
  And press a
  And press b
  And press 1
  And read value from the element with id as "example-filter" and save it as "typedKeys"
  And print value of "typedKeys"
  And check that variable {typedKeys} is equals to "ab1" and continue
#press BACKSPACE
  And press BACKSPACE
  And read value from the element with id as "example-filter" and save it as "afterBackspace"
  And print value of "afterBackspace"
  And check that variable {afterBackspace} is equals to "ab" and continue
#press @ (any special character is documented)
  And press @
  And read value from the element with id as "example-filter" and save it as "afterAt"
  And print value of "afterAt"
  And check that variable {afterAt} is equals to "ab@" and continue
#press SPACE (a trailing space cannot be seen or compared reliably, so a letter is pressed after it)
  And press SPACE
  And press z
  And read value from the element with id as "example-filter" and save it as "afterSpace"
  And print value of "afterSpace"
  And check that variable {afterSpace} is equals to "ab@ z" and continue

@rem_press_2
Scenario: press modifier keys that are in the allowed list (OPTION is documented as a synonym for ALT)
#Allowed list from the Command Reference: SHIFT, CONTROL, CTRL, ALT, OPTION, META, COMMAND. Pressing one key alone
#has no visible effect, so this only shows the step is accepted and does not break the page. It cannot show a chord.
  And click on the element with class "home-link"
  And click on the element with id as "example-filter"
  And press SHIFT
  And press CONTROL
  And press CTRL
  And press ALT
  And press OPTION
  And press META
  And press COMMAND
  And check that screen contains "Filter examples"
