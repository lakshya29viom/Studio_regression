Feature: clear text

@clear_text_1
Scenario: clear text from the field's id
  And enter "zzzz" into "Filter examples" with exact phrase
  And wait 2 secs
  And check that screen contains "No examples match."
  And clear text from "Type a name or a word from the description"
  And wait 2 secs
  And check that screen contains "A/B Testing"