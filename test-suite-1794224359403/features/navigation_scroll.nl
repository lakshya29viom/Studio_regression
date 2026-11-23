@web_remaining @navigation_scroll
Feature: navigation_scroll
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

@rem_scroll_1
Scenario: scroll down until screen contains "<string>" with exact phrase
#"50.1" is guessed from the row.column numbering seen in your swipe scenario ("1.1" and "50.50"). Check it on the page.
  And click on the element with class "home-link"
  And click "Large & Deep DOM"
  And wait 2 secs
  And capture screenshot
#scroll (up|down) until screen contains "<string>" [ with exact phrase]
  And scroll down until screen contains "50.1" with exact phrase
  And capture screenshot
  And check that screen contains "50.1" with exact phrase
#leave the Large & Deep DOM page (its home-link is not visible there, so the next scenario cannot use it)
  And go back
  And wait 2 secs

@rem_scroll_2
Scenario: scroll up until screen contains "<string>"
  And click on the element with class "home-link"
  And click "Large & Deep DOM"
  And wait 2 secs
  And scroll down until screen contains "50.1" with exact phrase
#scroll up until screen contains "<string>"
  And scroll up until screen contains "Large & Deep DOM"
  And capture screenshot
  And check that screen contains "Large & Deep DOM"
#leave the Large & Deep DOM page (its home-link is not visible there, so the next scenario cannot use it)
  And go back
  And wait 2 secs

@rem_scroll_probe @probe
Scenario: does check that screen contains see text that is below the visible area
#Not a pass or fail test. If the next step FAILS, the screen check only sees what is visible, and "scroll" is testable by text.
#If it PASSES, the screen check reads the whole page, so every "scroll ... until" check above proves nothing by itself
#and only the screenshot shows whether the page moved. Either result is a finding for file 02.
  And click on the element with class "home-link"
  And click "Large & Deep DOM"
  And wait 2 secs
  And check that screen contains "50.1" with exact phrase
#leave the Large & Deep DOM page (its home-link is not visible there, so the next scenario cannot use it)
  And go back
  And wait 2 secs
 