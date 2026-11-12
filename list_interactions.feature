Feature: list_interactions

@regression_8
Scenario: list interactions
  click "Large Form"
  wait 2 secs
  check that screen contains "Large Form"
#select "<string>" from list "<string>"
  select "Germany" from list "Country"
  wait 2 secs
  read value from the element with id as "country" and save it as "countryPlain"
  print value of "countryPlain"
  check that variable {countryPlain} is equals to "de" and continue
#select "<string>" from list "<string>" with exact phrase
  select "India" from list "Country" with exact phrase
  wait 2 secs
  read value from the element with id as "country" and save it as "countryExact"
  print value of "countryExact"
  check that variable {countryExact} is equals to "in" and continue
  check that variable {countryExact} is not equals to "de" and continue
#select "<string>" from the <ordinal> list "<string>"
  select "Argentina" from the 1st list "Country"
  wait 2 secs
  read value from the element with id as "country" and save it as "countryOrdinal"
  print value of "countryOrdinal"
  check that variable {countryOrdinal} is equals to "ar" and continue
#select "<string>" from the <ordinal> list "<string>" with exact phrase
  select "United States" from the 1st list "Country" with exact phrase
  wait 2 secs
  read value from the element with id as "country" and save it as "countryOrdinalExact"
  print value of "countryOrdinalExact"
  check that variable {countryOrdinalExact} is equals to "us" and continue
#select index <int> from list "<string>" (index 1 is "Choose a country", so 3 is Germany)
  select index 3 from list "Country"
  wait 2 secs
  read value from the element with id as "country" and save it as "countryIndex"
  print value of "countryIndex"
  check that variable {countryIndex} is equals to "de" and continue
#select index <int> from list "<string>" with exact phrase (4 is India)
  select index 4 from list "Country" with exact phrase
  wait 2 secs
  read value from the element with id as "country" and save it as "countryIndexExact"
  print value of "countryIndexExact"
  check that variable {countryIndexExact} is equals to "in" and continue
  check that variable {countryIndexExact} contains "in" and continue
  go back
  wait 2 secs

#select "<string>" from list "<string>"
  click "Custom Dropdown"
  wait 2 secs
  check that screen contains "Selected: nothing"
  select "Banana" from list "Fruit"
  wait 2 secs
  check that screen contains "Selected: banana"
  go back
  wait 2 secs
#select "<string>" from list "<string>" with exact phrase
  click "Custom Dropdown"
  wait 2 secs
  check that screen contains "Selected: nothing"
  select "Mango" from list "Fruit" with exact phrase
  wait 2 secs
  check that screen contains "Selected: mango"
  go back
  wait 2 secs
#select index <int> from list "<string>" (2 is Banana)
  click "Custom Dropdown"
  wait 2 secs
  check that screen contains "Selected: nothing"
  select index 2 from list "Fruit"
  wait 2 secs
  check that screen contains "Selected: banana"
  go back
  wait 2 secs
#select from the Dropdown page using the heading text as the list name
  click "Dropdown" with exact phrase
  wait 2 secs
  check that screen contains "Dropdown List"
#select "<string>" from list "<string>" 
  select "Option 1" from list "Dropdown List"
  wait 2 secs
  read value from the element with id as "dropdown" and save it as "dropdownHeading"
  print value of "dropdownHeading"
#expect in report: 1
  check that variable {dropdownHeading} is equals to "1" and continue
  go back
  wait 2 secs
#select from the Dropdown page using the select's id as the list name
  click "Dropdown" with exact phrase
  wait 2 secs
  check that screen contains "Dropdown List"
#select "<string>" from list "<string>"
  select "Option 2" from list "dropdown"
  wait 2 secs
  read value from the element with id as "dropdown" and save it as "dropdownId"
  print value of "dropdownId"
  check that variable {dropdownId} is equals to "2" and continue
  go back
  wait 2 secs


@list_1
Scenario: select the first Languages option by index and confirm it on the submitted form
  click "Large Form"
  wait 2 secs
  check that screen contains "Large Form"
  select index 1 from list "Languages"
  wait 4 secs
  click "Submit"
  wait 2 secs
  check that screen contains "Form Submitted"
  check that screen contains "English"
  go back
  wait 2 secs
  go back
  wait 2 secs

@list_2
Scenario: select from the Dropdown page using the text
  click "Dropdown" with exact phrase
  wait 2 secs
  check that screen contains "Dropdown List"
#select "<string>" from list "<string>"
  select "Option 1" from list "Please select an option"
  wait 2 secs
  read value from the element with id as "dropdown" and save it as "dropdownShown"
  print value of "dropdownShown"
  check that variable {dropdownShown} is equals to "1" and continue
  go back
  wait 2 secs
