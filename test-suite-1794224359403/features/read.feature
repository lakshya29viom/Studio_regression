Feature: read

@regression_5
Scenario: read
#read value from field on the right of "<string>" and save it as "<string>"
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the right of "Text to copy" and save it as "rightPlain"
  And print value of "rightPlain"
  And check that variable {rightPlain} is equals to "Copied from the-internet" and continue
  And go back
  And wait 2 secs
#read value from field on the right of <ordinal> "<string>" and save it as "<string>"
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the right of 1st "Text to copy" and save it as "rightOrdinal"
  And print value of "rightOrdinal"
  And check that variable {rightOrdinal} is equals to "Copied from the-internet" and continue
  And go back
  And wait 2 secs
#read value from field on the right of "<string>" and save it as "<string>" with exact phrase
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the right of "Text to copy" and save it as "rightExact" with exact phrase
  And print value of "rightExact"
  And check that variable {rightExact} is equals to "Copied from the-internet" and continue
  And go back
  And wait 2 secs
#read value from field on the right of <ordinal> "<string>" and save it as "<string>" with exact phrase
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the right of 1st "Text to copy" and save it as "rightOrdinalExact" with exact phrase
  And print value of "rightOrdinalExact"
  And check that variable {rightOrdinalExact} is equals to "Copied from the-internet" and continue
  And go back
  And wait 2 secs
#read value from field on the left of "<string>" and save it as "<string>"
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the left of "Copy" and save it as "leftPlain"
  And print value of "leftPlain"
  And check that variable {leftPlain} is equals to "Copied from the-internet" and continue
  And go back
  And wait 2 secs
#read value from field on the left of <ordinal> "<string>" and save it as "<string>"
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the left of 1st "Copy" and save it as "leftOrdinal"
  And print value of "leftOrdinal"
  And check that variable {leftOrdinal} is equals to "Copied from the-internet" and continue
  And go back
  And wait 2 secs
#read value from field on the left of "<string>" and save it as "<string>" with exact phrase
  And click "Visual Differences"
  And wait 2 secs
  And click on the element with id as "card-email"
  And enter "tom@example.com"
  And read value from field on the left of "Subscribe" and save it as "leftExact" with exact phrase
  And print value of "leftExact"
  And check that variable {leftExact} is equals to "tom@example.com" and continue
  And go back
  And wait 2 secs
#read value from field on the left of <ordinal> "<string>" and save it as "<string>" with exact phrase 
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the left of 2nd "Copy" and save it as "leftOrdinalExact" with exact phrase
  And print value of "leftOrdinalExact"
  And check that variable {leftOrdinalExact} is equals to "Copied from the-internet" and continue
  And go back
  And wait 2 secs
  And enter "Dropdown" into "Filter examples" with exact phrase
  And wait 2 secs
  And check that screen contains "Dropdown"
#read value from "<string>" and save it as "<string>"
  And read value from "Welcome to the-internet" and save it as "headingText"
  And print value of "headingText"
  And check that variable {headingText} is equals to "Welcome to the-internet" and continue
#read value from "<string>" and save it as "<string>"
  And read value from "Available Examples" and save it as "subHeadingText"
  And print value of "subHeadingText"
  And check that variable {subHeadingText} is equals to "Available Examples" and continue
#read value from "<string>" and save it as "<string>"
  And read value from "Filter examples" and save it as "filterViaLabel"
  And print value of "filterViaLabel"
  And check that variable {filterViaLabel} is equals to "Dropdown" and continue
#read value from field on the below of "<string>" and save it as "<string>"
  And read value from field on the below of "Filter examples" and save it as "belowPlain"
  And print value of "belowPlain"
  And check that variable {belowPlain} is equals to "Dropdown" and continue
#read value from field on the below of <ordinal> "<string>" and save it as "<string>"
  And read value from field on the below of 1st "Filter examples" and save it as "belowOrdinal"
  And print value of "belowOrdinal"
  And check that variable {belowOrdinal} is equals to "Dropdown" and continue
#read value from field on the below of "<string>" and save it as "<string>" with exact phrase
  And read value from field on the below of "Filter examples" and save it as "belowExact" with exact phrase
  And print value of "belowExact"
  And check that variable {belowExact} is equals to "Dropdown" and continue
#read value from field on the below of <ordinal> "<string>" and save it as "<string>" with exact phrase
  And read value from field on the below of 1st "Filter examples" and save it as "belowOrdinalExact" with exact phrase
  And print value of "belowOrdinalExact"
  And check that variable {belowOrdinalExact} is equals to "Dropdown" and continue
#read value from the element with id as "<string>" and save it as "<string>"
  And read value from the element with id as "example-filter" and save it as "idValue"
  And print value of "idValue"
  And check that variable {idValue} is equals to "Dropdown" and continue
#read value from the element with id as "<string>" at index <int> and save it as "<string>"
  And read value from the element with id as "example-filter" at index 1 and save it as "idIndexValue"
  And print value of "idIndexValue"
  And check that variable {idIndexValue} is equals to "Dropdown" and continue
  And enter "zzzz" into "Filter examples" with exact phrase
  And wait 2 secs
  And check that screen contains "No examples match."
#read value from field on the above of "<string>" and save it as "<string>"
  And read value from field on the above of "No examples match" and save it as "abovePlain"
  And print value of "abovePlain"
  And check that variable {abovePlain} is equals to "zzzz" and continue
#read value from field on the above of <ordinal> "<string>" and save it as "<string>"
  And read value from field on the above of 1st "No examples match" and save it as "aboveOrdinal"
  And print value of "aboveOrdinal"
  And check that variable {aboveOrdinal} is equals to "zzzz" and continue
#read value from field on the above of "<string>" and save it as "<string>" with exact phrase
  And read value from field on the above of "No examples match." and save it as "aboveExact" with exact phrase
  And print value of "aboveExact"
  And check that variable {aboveExact} is equals to "zzzz" and continue
#read value from field on the above of <ordinal> "<string>" and save it as "<string>" with exact phrase
  And read value from field on the above of 1st "No examples match." and save it as "aboveOrdinalExact" with exact phrase
  And print value of "aboveOrdinalExact"
  And check that variable {aboveOrdinalExact} is equals to "zzzz" and continue

@read_1
Scenario: read screen fails on web (only supported for mainframe or IBM i)
  And read screen and save it as "screenContent"
  And print value of "screenContent"
