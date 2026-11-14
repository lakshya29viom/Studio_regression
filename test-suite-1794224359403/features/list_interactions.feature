Feature: list_interactions

@regression_8
Scenario: list interactions
  And click "Large Form"
  And wait 2 secs
  And check that screen contains "Large Form"
#select "<string>" from list "<string>"
  And select "Germany" from list "Country"
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryPlain"
  And print value of "countryPlain"
  And check that variable {countryPlain} is equals to "de" and continue
#select "<string>" from list "<string>" with exact phrase
  And select "India" from list "Country" with exact phrase
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryExact"
  And print value of "countryExact"
  And check that variable {countryExact} is equals to "in" and continue
  And check that variable {countryExact} is not equals to "de" and continue
#select "<string>" from the <ordinal> list "<string>"
  And select "Argentina" from the 1st list "Country"
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryOrdinal"
  And print value of "countryOrdinal"
  And check that variable {countryOrdinal} is equals to "ar" and continue
#select "<string>" from the <ordinal> list "<string>" with exact phrase
  And select "United States" from the 1st list "Country" with exact phrase
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryOrdinalExact"
  And print value of "countryOrdinalExact"
  And check that variable {countryOrdinalExact} is equals to "us" and continue
#select index <int> from list "<string>" (index 1 is "Choose a country", so 3 is Germany)
  And select index 3 from list "Country"
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryIndex"
  And print value of "countryIndex"
  And check that variable {countryIndex} is equals to "de" and continue
#select index <int> from list "<string>" with exact phrase (4 is India)
  And select index 4 from list "Country" with exact phrase
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryIndexExact"
  And print value of "countryIndexExact"
  And check that variable {countryIndexExact} is equals to "in" and continue
  And check that variable {countryIndexExact} contains "in" and continue
  And go back
  And wait 2 secs

#select "<string>" from list "<string>"
  And click "Custom Dropdown"
  And wait 2 secs
  And check that screen contains "Selected: nothing"
  And select "Banana" from list "Fruit"
  And wait 2 secs
  And check that screen contains "Selected: banana"
  And go back
  And wait 2 secs
#select "<string>" from list "<string>" with exact phrase
  And click "Custom Dropdown"
  And wait 2 secs
  And check that screen contains "Selected: nothing"
  And select "Mango" from list "Fruit" with exact phrase
  And wait 2 secs
  And check that screen contains "Selected: mango"
  And go back
  And wait 2 secs
#select index <int> from list "<string>" (2 is Banana)
  And click "Custom Dropdown"
  And wait 2 secs
  And check that screen contains "Selected: nothing"
  And select index 2 from list "Fruit"
  And wait 2 secs
  And check that screen contains "Selected: banana"
  And go back
  And wait 2 secs
#select from the Dropdown page using the heading text as the list name
  And click "Dropdown" with exact phrase
  And wait 2 secs
  And check that screen contains "Dropdown List"
#select "<string>" from list "<string>" 
  And select "Option 1" from list "Dropdown List"
  And wait 2 secs
  And read value from the element with id as "dropdown" and save it as "dropdownHeading"
  And print value of "dropdownHeading"
#expect in report: 1
  And check that variable {dropdownHeading} is equals to "1" and continue
  And go back
  And wait 2 secs
#select from the Dropdown page using the select's id as the list name
  And click "Dropdown" with exact phrase
  And wait 2 secs
  And check that screen contains "Dropdown List"
#select "<string>" from list "<string>"
  And select "Option 2" from list "dropdown"
  And wait 2 secs
  And read value from the element with id as "dropdown" and save it as "dropdownId"
  And print value of "dropdownId"
  And check that variable {dropdownId} is equals to "2" and continue
  And go back
  And wait 2 secs


@list_1
Scenario: select the first Languages option by index and confirm it on the submitted form
  And click "Large Form"
  And wait 2 secs
  And check that screen contains "Large Form"
  And select index 1 from list "Languages"
  And wait 4 secs
  And click "Submit"
  And wait 2 secs
  And check that screen contains "Form Submitted"
  And check that screen contains "English"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs

@list_2
Scenario: select from the Dropdown page using the text
  And click "Dropdown" with exact phrase
  And wait 2 secs
  And check that screen contains "Dropdown List"
#select "<string>" from list "<string>"
  And select "Option 1" from list "Please select an option"
  And wait 2 secs
  And read value from the element with id as "dropdown" and save it as "dropdownShown"
  And print value of "dropdownShown"
  And check that variable {dropdownShown} is equals to "1" and continue
  And go back
  And wait 2 secs