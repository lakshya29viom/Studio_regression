Feature: hover

@regression_9
Scenario: hover
#hover over "<string>"
And hover over "A/B Testing"
And wait 2 secs
#hover over "<string>" [ with exact phrase]
And hover over "Autocomplete" with exact phrase
And wait 2 secs
#hover over the <ordinal> "<string>"
And hover over the 2nd "Dynamic"
And wait 2 secs

  