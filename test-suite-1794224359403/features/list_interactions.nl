Feature: list_interactions

@regression_8
Scenario: list interactions
#---------- native select with a label (Large Form, Country: Argentina, Germany, India, United States) ----------
  And click "Large Form"
  And wait 2 secs
  And check that screen contains "Choose a country"
#select "<string>" from list "<string>"
  And select "Germany" from list "Country"
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryPlain"
  And print value of "countryPlain"
#expect in report: de (the option value)
  And check that variable {countryPlain} is equals to "de" and continue
#select "<string>" from list "<string>" with exact phrase
  And select "India" from list "Country" with exact phrase
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryExact"
  And print value of "countryExact"
#expect in report: in
  And check that variable {countryExact} is equals to "in" and continue
  And check that variable {countryExact} is not equals to "de" and continue
#select "<string>" from the <ordinal> list "<string>"
  And select "Argentina" from the 1st list "Country"
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryOrdinal"
  And print value of "countryOrdinal"
#expect in report: ar
  And check that variable {countryOrdinal} is equals to "ar" and continue
#select "<string>" from the <ordinal> list "<string>" with exact phrase
  And select "United States" from the 1st list "Country" with exact phrase
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryOrdinalExact"
  And print value of "countryOrdinalExact"
#expect in report: us
  And check that variable {countryOrdinalExact} is equals to "us" and continue
#select index <int> from list "<string>" (index 1 is "Choose a country", so 3 is Germany)
  And select index 3 from list "Country"
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryIndex"
  And print value of "countryIndex"
#expect in report: de
  And check that variable {countryIndex} is equals to "de" and continue
#select index <int> from list "<string>" with exact phrase (4 is India)
  And select index 4 from list "Country" with exact phrase
  And wait 2 secs
  And read value from the element with id as "country" and save it as "countryIndexExact"
  And print value of "countryIndexExact"
#expect in report: in
  And check that variable {countryIndexExact} is equals to "in" and continue
  And check that variable {countryIndexExact} contains "in" and continue
  And go back
  And wait 2 secs

#---------- custom ARIA dropdown (Custom Dropdown, div based combobox labelled Fruit) ----------
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

#---------- multi select (Large Form, Languages, its label has no for attribute) ----------
#select "<string>" from list "<string>" (first option of a multi select)
  And click "Large Form"
  And wait 2 secs
  And select "English" from list "Languages"
#select "<string>" from list "<string>" (second option, should be added to the first)
  And select "German" from list "Languages"
  And wait 2 secs
  And click "Submit"
  And wait 2 secs
  And check that screen contains "Form Submitted"
#the result table shows the selected languages as one comma separated value
  And check that screen contains "English, German"
  And go back
  And wait 2 secs
  And go back
  And wait 2 secs

#---------- multi select (Multiple Select Dropdown page) ----------
#select "<string>" from list "<string>"
  And click "Multiple Select Dropdown"
  And wait 2 secs
  And check that screen contains "Multiple Select Dropdown List"
  And select "Option 1" from list "Multiple Select Dropdown List"
#select "<string>" from list "<string>" (second option, should be added to the first)
  And select "Option 3" from list "Multiple Select Dropdown List"
  And wait 2 secs
  And read value from the element with id as "multiple-dropdown" and save it as "multipleValue"
  And print value of "multipleValue"
#expect in report: 1 (a read returns only the first selected option, so this does not prove Option 3 was added)
  And check that variable {multipleValue} is equals to "1" and continue
  And go back
  And wait 2 secs

#---------- native select with no label (Dropdown page), three ways of naming the list ----------
#select "<string>" from list "<string>" (the heading is the nearest visible text)
  And click "Dropdown" with exact phrase
  And wait 2 secs
  And check that screen contains "Please select an option"
  And select "Option 1" from list "Dropdown List"
  And wait 2 secs
  And read value from the element with id as "dropdown" and save it as "dropdownHeading"
  And print value of "dropdownHeading"
#expect in report: 1
  And check that variable {dropdownHeading} is equals to "1" and continue
  And go back
  And wait 2 secs
#select "<string>" from list "<string>" (the id is dropdown)
  And click "Dropdown" with exact phrase
  And wait 2 secs
  And check that screen contains "Please select an option"
  And select "Option 2" from list "dropdown"
  And wait 2 secs
  And read value from the element with id as "dropdown" and save it as "dropdownId"
  And print value of "dropdownId"
#expect in report: 2
  And check that variable {dropdownId} is equals to "2" and continue
  And go back
  And wait 2 secs
#select "<string>" from list "<string>" (the closed select shows "Please select an option")
  And click "Dropdown" with exact phrase
  And wait 2 secs
  And check that screen contains "Please select an option"
  And select "Option 1" from list "Please select an option"
  And wait 2 secs
  And read value from the element with id as "dropdown" and save it as "dropdownShown"
  And print value of "dropdownShown"
#expect in report: 1
  And check that variable {dropdownShown} is equals to "1" and continue
  And go back
  And wait 2 secs