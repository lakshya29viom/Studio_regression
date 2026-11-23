@web_remaining @print_content
Feature: print_content
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

@rem_print_1
Scenario: print debug contents of web table (short form) and read variable and print the value
  And click on the element with class "home-link"
  And click "Sortable Data Tables"
  And check that screen contains "Data Tables"
#print debug contents of web table "<string>" (the short form; features.zip only has the "with id as" form)
  And print debug contents of web table "#table1"
  And print debug contents of web table ".tablesorter"
  And print debug contents of web table with text "Last Name"
  And print debug contents of web table with class "tablesorter"
#read variable "<string>" and print the value
  And read value from "Last Name" and save it as "headerText"
  And read variable "headerText" and print the value
#Look in the report: the table lines should list each cell, and "headerText" should show Last Name (a header may show more text).
