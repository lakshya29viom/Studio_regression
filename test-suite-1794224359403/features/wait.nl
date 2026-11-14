Feature: wait

@wait_2
Scenario: wait for "<string>"
  And click "Dynamic Loading"
  And wait 2 secs
  And click "Example 1: Element on page that is hidden"
  And wait 2 secs
  And click "Start"
#wait for "<string>"
  And wait for "Hello World!"
  And check that screen contains "Hello World!"

@wait_3
Scenario: wait for "<string>" with exact phrase
  And click "Dynamic Loading"
  And wait 2 secs
  And click "Example 2: Element rendered after the fact"
  And wait 2 secs
  And click "Start"
#wait for "<string>" with exact phrase
  And wait for "Hello World!" with exact phrase
  And check that screen contains "Hello World!"
