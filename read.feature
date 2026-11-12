Feature: read

@regression_5
Scenario: read
#read value from field on the right of "<string>" and save it as "<string>"
  click "Browser Permissions"
  wait 2 secs
  read value from field on the right of "Text to copy" and save it as "rightPlain"
  print value of "rightPlain"
  check that variable {rightPlain} is equals to "Copied from the-internet" and continue
  go back
  wait 2 secs
#read value from field on the right of <ordinal> "<string>" and save it as "<string>"
  click "Browser Permissions"
  wait 2 secs
  read value from field on the right of 1st "Text to copy" and save it as "rightOrdinal"
  print value of "rightOrdinal"
  check that variable {rightOrdinal} is equals to "Copied from the-internet" and continue
  go back
  wait 2 secs
#read value from field on the right of "<string>" and save it as "<string>" with exact phrase
  click "Browser Permissions"
  wait 2 secs
  read value from field on the right of "Text to copy" and save it as "rightExact" with exact phrase
  print value of "rightExact"
  check that variable {rightExact} is equals to "Copied from the-internet" and continue
  go back
  wait 2 secs
#read value from field on the right of <ordinal> "<string>" and save it as "<string>" with exact phrase
  click "Browser Permissions"
  wait 2 secs
  read value from field on the right of 1st "Text to copy" and save it as "rightOrdinalExact" with exact phrase
  print value of "rightOrdinalExact"
  check that variable {rightOrdinalExact} is equals to "Copied from the-internet" and continue
  go back
  wait 2 secs
#read value from field on the left of "<string>" and save it as "<string>"
  click "Browser Permissions"
  wait 2 secs
  read value from field on the left of "Copy" and save it as "leftPlain"
  print value of "leftPlain"
  check that variable {leftPlain} is equals to "Copied from the-internet" and continue
  go back
  wait 2 secs
#read value from field on the left of <ordinal> "<string>" and save it as "<string>"
  click "Browser Permissions"
  wait 2 secs
  read value from field on the left of 1st "Copy" and save it as "leftOrdinal"
  print value of "leftOrdinal"
  check that variable {leftOrdinal} is equals to "Copied from the-internet" and continue
  go back
  wait 2 secs
#read value from field on the left of "<string>" and save it as "<string>" with exact phrase
  click "Visual Differences"
  wait 2 secs
  click on the element with id as "card-email"
  enter "tom@example.com"
  read value from field on the left of "Subscribe" and save it as "leftExact" with exact phrase
  print value of "leftExact"
  check that variable {leftExact} is equals to "tom@example.com" and continue
  go back
  wait 2 secs
#read value from field on the left of <ordinal> "<string>" and save it as "<string>" with exact phrase 
  click "Browser Permissions"
  wait 2 secs
  read value from field on the left of 2nd "Copy" and save it as "leftOrdinalExact" with exact phrase
  print value of "leftOrdinalExact"
  check that variable {leftOrdinalExact} is equals to "Copied from the-internet" and continue
  go back
  wait 2 secs
  enter "Dropdown" into "Filter examples" with exact phrase
  wait 2 secs
  check that screen contains "Dropdown"
#read value from "<string>" and save it as "<string>"
  read value from "Welcome to the-internet" and save it as "headingText"
  print value of "headingText"
  check that variable {headingText} is equals to "Welcome to the-internet" and continue
#read value from "<string>" and save it as "<string>"
  read value from "Available Examples" and save it as "subHeadingText"
  print value of "subHeadingText"
  check that variable {subHeadingText} is equals to "Available Examples" and continue
#read value from "<string>" and save it as "<string>"
  read value from "Filter examples" and save it as "filterViaLabel"
  print value of "filterViaLabel"
  check that variable {filterViaLabel} is equals to "Dropdown" and continue
#read value from field on the below of "<string>" and save it as "<string>"
  read value from field on the below of "Filter examples" and save it as "belowPlain"
  print value of "belowPlain"
  check that variable {belowPlain} is equals to "Dropdown" and continue
#read value from field on the below of <ordinal> "<string>" and save it as "<string>"
  read value from field on the below of 1st "Filter examples" and save it as "belowOrdinal"
  print value of "belowOrdinal"
  check that variable {belowOrdinal} is equals to "Dropdown" and continue
#read value from field on the below of "<string>" and save it as "<string>" with exact phrase
  read value from field on the below of "Filter examples" and save it as "belowExact" with exact phrase
  print value of "belowExact"
  check that variable {belowExact} is equals to "Dropdown" and continue
#read value from field on the below of <ordinal> "<string>" and save it as "<string>" with exact phrase
  read value from field on the below of 1st "Filter examples" and save it as "belowOrdinalExact" with exact phrase
  print value of "belowOrdinalExact"
  check that variable {belowOrdinalExact} is equals to "Dropdown" and continue
#read value from the element with id as "<string>" and save it as "<string>"
  read value from the element with id as "example-filter" and save it as "idValue"
  print value of "idValue"
  check that variable {idValue} is equals to "Dropdown" and continue
#read value from the element with id as "<string>" at index <int> and save it as "<string>"
  read value from the element with id as "example-filter" at index 1 and save it as "idIndexValue"
  print value of "idIndexValue"
  check that variable {idIndexValue} is equals to "Dropdown" and continue
  enter "zzzz" into "Filter examples" with exact phrase
  wait 2 secs
  check that screen contains "No examples match."
#read value from field on the above of "<string>" and save it as "<string>"
  read value from field on the above of "No examples match" and save it as "abovePlain"
  print value of "abovePlain"
  check that variable {abovePlain} is equals to "zzzz" and continue
#read value from field on the above of <ordinal> "<string>" and save it as "<string>"
  read value from field on the above of 1st "No examples match" and save it as "aboveOrdinal"
  print value of "aboveOrdinal"
  check that variable {aboveOrdinal} is equals to "zzzz" and continue
#read value from field on the above of "<string>" and save it as "<string>" with exact phrase
  read value from field on the above of "No examples match." and save it as "aboveExact" with exact phrase
  print value of "aboveExact"
  check that variable {aboveExact} is equals to "zzzz" and continue
#read value from field on the above of <ordinal> "<string>" and save it as "<string>" with exact phrase
  read value from field on the above of 1st "No examples match." and save it as "aboveOrdinalExact" with exact phrase
  print value of "aboveOrdinalExact"
  check that variable {aboveOrdinalExact} is equals to "zzzz" and continue

@read_1
Scenario: read screen fails on web (only supported for mainframe or IBM i)
  read screen and save it as "screenContent"
  print value of "screenContent"
