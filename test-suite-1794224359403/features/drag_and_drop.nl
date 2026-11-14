Feature: drag and drop

@regression
Scenario: drag and drop
#---------- Drag and Drop page: dropping A on B swaps them, so column-a ends up holding B and column-b holds A ----------
#drag "<string>" and drop it on "<string>"
  And click "Drag and Drop"
  And wait 2 secs
  And drag "A" and drop it on "B"
  And wait 2 secs
  And read value from the element with id as "column-a" and save it as "colA"
  And read value from the element with id as "column-b" and save it as "colB"
  And print value of "colA"
  And print value of "colB"
  And check that variable {colA} is equals to "B" and continue
  And check that variable {colB} is equals to "A" and continue
  And go back
  And wait 2 secs
#drag "<string>" with exact phrase and drop it on "<string>"
  And click "Drag and Drop"
  And wait 2 secs
  And drag "A" with exact phrase and drop it on "B"
  And wait 2 secs
  And read value from the element with id as "column-a" and save it as "colA"
  And read value from the element with id as "column-b" and save it as "colB"
  And print value of "colA"
  And print value of "colB"
  And check that variable {colA} is equals to "B" and continue
  And check that variable {colB} is equals to "A" and continue
  And go back
  And wait 2 secs
#drag "<string>" and drop it on "<string>" with exact phrase
  And click "Drag and Drop"
  And wait 2 secs
  And drag "A" and drop it on "B" with exact phrase
  And wait 2 secs
  And read value from the element with id as "column-a" and save it as "colA"
  And read value from the element with id as "column-b" and save it as "colB"
  And print value of "colA"
  And print value of "colB"
  And check that variable {colA} is equals to "B" and continue
  And check that variable {colB} is equals to "A" and continue
  And go back
  And wait 2 secs
#drag "<string>" with exact phrase and drop it on "<string>" with exact phrase (dragged the other way, B onto A)
  And click "Drag and Drop"
  And wait 2 secs
  And drag "B" with exact phrase and drop it on "A" with exact phrase
  And wait 2 secs
  And read value from the element with id as "column-a" and save it as "colA"
  And read value from the element with id as "column-b" and save it as "colB"
  And print value of "colA"
  And print value of "colB"
  And check that variable {colA} is equals to "B" and continue
  And check that variable {colB} is equals to "A" and continue
  And go back
  And wait 2 secs
#drag "{variable}" and drop it on "{variable}" (the two column labels are read from the page first)
  And click "Drag and Drop"
  And wait 2 secs
  And read value from the element with id as "column-a" and save it as "sourceItem"
  And read value from the element with id as "column-b" and save it as "targetZone"
  And drag "{sourceItem}" and drop it on "{targetZone}"
  And wait 2 secs
  And read value from the element with id as "column-a" and save it as "colA"
  And read value from the element with id as "column-b" and save it as "colB"
  And print value of "colA"
  And print value of "colB"
  And check that variable {colA} is equals to "B" and continue
  And check that variable {colB} is equals to "A" and continue
  And go back
  And wait 2 secs

#---------- Pointer Events page: dropping First on Fourth moves First to the end of the list ----------
#drag "<string>" and drop it on "<string>" (list order is shown under the list)
  And click "Pointer Events"
  And wait 2 secs
  And drag "First" and drop it on "Fourth"
  And wait 2 secs
  And check that screen contains "Order: Second, Third"
  And go back
  And wait 2 secs
#drag "<string>" with exact phrase and drop it on "<string>" with exact phrase
  And click "Pointer Events"
  And wait 2 secs
  And drag "First" with exact phrase and drop it on "Fourth" with exact phrase
  And wait 2 secs
  And check that screen contains "Order: Second, Third"
  And go back
  And wait 2 secs