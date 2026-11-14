Feature: clear text

@regression
Scenario: clear text
#---------- clear text from [the <ordinal>] "<string>" [with exact phrase] (home page filter box) ----------
#clear text from "<string>"
  And enter "zzzz" into "Filter examples" with exact phrase
  And wait 2 secs
  And check that screen contains "No examples match."
  And clear text from "Filter examples"
  And wait 2 secs
  And check that screen contains "A/B Testing"
#clear text from the <ordinal> "<string>"
  And enter "zzzz" into "Filter examples" with exact phrase
  And wait 2 secs
  And check that screen contains "No examples match."
  And clear text from the 1st "Filter examples"
  And wait 2 secs
  And check that screen contains "A/B Testing"
#clear text from "<string>" with exact phrase
  And enter "zzzz" into "Filter examples" with exact phrase
  And wait 2 secs
  And check that screen contains "No examples match."
  And clear text from "Filter examples" with exact phrase
  And wait 2 secs
  And check that screen contains "A/B Testing"
#clear text from the <ordinal> "<string>" with exact phrase
  And enter "zzzz" into "Filter examples" with exact phrase
  And wait 2 secs
  And check that screen contains "No examples match."
  And clear text from the 1st "Filter examples" with exact phrase
  And wait 2 secs
  And check that screen contains "A/B Testing"
#clear text from "{variable}" (the field name comes from a variable: type the label text into the box and read it back)
  And enter "Filter examples" into "Filter examples" with exact phrase
  And wait 2 secs
  And read value from the element with id as "example-filter" and save it as "fieldName"
  And check that variable {fieldName} is equals to "Filter examples" and continue
  And clear text from "{fieldName}"
  And wait 2 secs
  And check that screen contains "A/B Testing"
#clear text from "{variable}" with exact phrase
  And enter "Filter examples" into "Filter examples" with exact phrase
  And wait 2 secs
  And clear text from "{fieldName}" with exact phrase
  And wait 2 secs
  And check that screen contains "A/B Testing"

#---------- clear text on the Large Form (read the field back after clearing) ----------
#clear text from the <ordinal> "<string>" (the description sentence contains "name", so 1st "name" is the sentence and 2nd is the First name label)
  And click "Large Form"
  And wait 2 secs
  And enter "Tom" into "First name" with exact phrase
  And clear text from the 2nd "name"
  And wait 2 secs
  And read value from "First name" and save it as "firstNameAfter"
  And print value of "firstNameAfter"
  And check that variable {firstNameAfter} is not equals to "Tom" and continue
  And go back
  And wait 2 secs
#clear text from the <ordinal> "<string>" with exact phrase
  And click "Large Form"
  And wait 2 secs
  And enter "Tom" into "First name" with exact phrase
  And clear text from the 2nd "name" with exact phrase
  And wait 2 secs
  And read value from "First name" and save it as "firstNameExactAfter"
  And print value of "firstNameExactAfter"
  And check that variable {firstNameExactAfter} is not equals to "Tom" and continue
  And go back
  And wait 2 secs
#clear text from "<string>" with exact phrase (a text area)
  And click "Large Form"
  And wait 2 secs
  And enter "hello" into "About you" with exact phrase
  And clear text from "About you" with exact phrase
  And wait 2 secs
  And read value from "About you" and save it as "aboutAfter"
  And print value of "aboutAfter"
  And check that variable {aboutAfter} is not equals to "hello" and continue
  And go back
  And wait 2 secs

#---------- clear the selection on a native select (the docs include single and multiple) ----------
#clear text from "<string>" with exact phrase (a single select)
  And click "Large Form"
  And wait 2 secs
  And select "Germany" from list "Country" with exact phrase
  And clear text from "Country" with exact phrase
  And wait 2 secs
  And read value from "Country" and save it as "countryAfter"
  And print value of "countryAfter"
  And check that variable {countryAfter} is not equals to "Germany" and continue
  And go back
  And wait 2 secs
#clear text from "<string>" (a multiple select, its label has no for attribute so it may not resolve to the list)
  And click "Large Form"
  And wait 2 secs
  And select "English" from list "Languages"
  And select "German" from list "Languages"
  And clear text from "Languages"
  And wait 2 secs
  And go back
  And wait 2 secs