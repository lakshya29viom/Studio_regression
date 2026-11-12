Feature: hover

@regression_10
Scenario: hover
#hover over "<string>"
hover over "A/B Testing"
wait 2 secs
#hover over "<string>" [ with exact phrase]
hover over "Autocomplete" with exact phrase
wait 2 secs
#hover over the <ordinal> "<string>"
hover over the 2nd "Dynamic"
wait 2 secs

  
