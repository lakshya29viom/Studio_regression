Feature: read

@regression_5
Scenario: read
#---------- SETUP : type a known value into the filter box ----------
  And enter "Dropdown" into "Filter examples" with exact phrase
  And wait 2 secs
  And check that screen contains "Dropdown"

#---------- read screen and save it as "<string>" ----------
#read screen and save it as "<string>"
  And read screen and save it as "screenContent"
  And print value of "screenContent"
#expect in report: the whole page text, including "Welcome to the-internet" and the filtered links

#---------- read value from "<string>" and save it as "<string>" ----------
#read value from "<string>" and save it as "<string>" (heading text)
  And read value from "Welcome to the-internet" and save it as "headingText"
  And print value of "headingText"
#expect in report: Welcome to the-internet
#read value from "<string>" and save it as "<string>" (sub heading text)
  And read value from "Available Examples" and save it as "subHeadingText"
  And print value of "subHeadingText"
#expect in report: Available Examples
#read value from "<string>" and save it as "<string>" (an input found by its label)
  And read value from "Filter examples" and save it as "filterViaLabel"
  And print value of "filterViaLabel"
#expect in report: either the label text or the typed value "Dropdown", this shows which one the step returns

#---------- read value from field on the below of "<string>" ----------
#read value from field on the below of "<string>" and save it as "<string>"
  And read value from field on the below of "Filter examples" and save it as "belowPlain"
  And print value of "belowPlain"
#expect in report: Dropdown
#read value from field on the below of <ordinal> "<string>" and save it as "<string>"
  And read value from field on the below of 1st "Filter examples" and save it as "belowOrdinal"
  And print value of "belowOrdinal"
#expect in report: Dropdown
#read value from field on the below of "<string>" and save it as "<string>" with exact phrase
  And read value from field on the below of "Filter examples" and save it as "belowExact" with exact phrase
  And print value of "belowExact"
#expect in report: Dropdown
#read value from field on the below of <ordinal> "<string>" and save it as "<string>" with exact phrase
  And read value from field on the below of 1st "Filter examples" and save it as "belowOrdinalExact" with exact phrase
  And print value of "belowOrdinalExact"
#expect in report: Dropdown

#---------- read value from field on the above of "<string>" (the filtered link list sits below the filter box) ----------
#read value from field on the above of "<string>" and save it as "<string>"
  And read value from field on the above of "Custom Dropdown" and save it as "abovePlain"
  And print value of "abovePlain"
#expect in report: Dropdown
#read value from field on the above of <ordinal> "<string>" and save it as "<string>"
  And read value from field on the above of 1st "Custom Dropdown" and save it as "aboveOrdinal"
  And print value of "aboveOrdinal"
#expect in report: Dropdown
#read value from field on the above of "<string>" and save it as "<string>" with exact phrase
  And read value from field on the above of "Dropdown" and save it as "aboveExact" with exact phrase
  And print value of "aboveExact"
#expect in report: Dropdown
#read value from field on the above of <ordinal> "<string>" and save it as "<string>" with exact phrase
  And read value from field on the above of 1st "Dropdown" and save it as "aboveOrdinalExact" with exact phrase
  And print value of "aboveOrdinalExact"
#expect in report: Dropdown

#---------- read value from the element with id as "<string>" [at index <int>] and save it as "<string>" ----------
#read value from the element with id as "<string>" and save it as "<string>"
  And read value from the element with id as "example-filter" and save it as "idValue"
  And print value of "idValue"
#expect in report: Dropdown
#read value from the element with id as "<string>" at index <int> and save it as "<string>"
  And read value from the element with id as "example-filter" at index 1 and save it as "idIndexValue"
  And print value of "idIndexValue"
#expect in report: Dropdown

@regression
Scenario: read left and right
#---------- read value from field on the right of "<string>" (the field is the label's next sibling) ----------
#read value from field on the right of "<string>" and save it as "<string>"
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the right of "Text to copy" and save it as "rightPlain"
  And print value of "rightPlain"
#expect in report: Copied from the-internet
  And go back
  And wait 2 secs
#read value from field on the right of <ordinal> "<string>" and save it as "<string>"
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the right of 1st "Text to copy" and save it as "rightOrdinal"
  And print value of "rightOrdinal"
#expect in report: Copied from the-internet
  And go back
  And wait 2 secs
#read value from field on the right of "<string>" and save it as "<string>" with exact phrase
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the right of "Text to copy" and save it as "rightExact" with exact phrase
  And print value of "rightExact"
#expect in report: Copied from the-internet
  And go back
  And wait 2 secs
#read value from field on the right of <ordinal> "<string>" and save it as "<string>" with exact phrase
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the right of 1st "Text to copy" and save it as "rightOrdinalExact" with exact phrase
  And print value of "rightOrdinalExact"
#expect in report: Copied from the-internet
  And go back
  And wait 2 secs

#---------- read value from field on the left of "<string>" (the field is the Copy button's previous sibling) ----------
#read value from field on the left of "<string>" and save it as "<string>" (anchor on the Paste button, two siblings after the field)
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the left of "Paste" and save it as "leftPlain"
  And print value of "leftPlain"
#expect in report: Copied from the-internet, only if the step skips the Copy button; otherwise it fails
  And go back
  And wait 2 secs
#read value from field on the left of <ordinal> "<string>" and save it as "<string>" (the 1st "Copy" is the label, so use 2nd)
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the left of 2nd "Copy" and save it as "leftOrdinal"
  And print value of "leftOrdinal"
#expect in report: Copied from the-internet
  And go back
  And wait 2 secs
#read value from field on the left of "<string>" and save it as "<string>" with exact phrase
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the left of "Copy" and save it as "leftExact" with exact phrase
  And print value of "leftExact"
#expect in report: Copied from the-internet
  And go back
  And wait 2 secs
#read value from field on the left of <ordinal> "<string>" and save it as "<string>" with exact phrase
  And click "Browser Permissions"
  And wait 2 secs
  And read value from field on the left of 1st "Copy" and save it as "leftOrdinalExact" with exact phrase
  And print value of "leftOrdinalExact"
#expect in report: Copied from the-internet
  And go back
  And wait 2 secs