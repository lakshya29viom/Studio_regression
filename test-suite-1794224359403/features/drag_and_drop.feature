Feature: drag_and_drop

@drag_and_drop_1
Scenario: drag plain
#---------- drag "<string>" and drop it on "<string>" ----------
  And click "Drag and Drop" with exact phrase
  And wait 2 secs
#drag "<string>" and drop it on "<string>"
  And drag "A" and drop it on "B"
  And wait 2 secs
  And read screen and save it as "screenAfterPlain"
  And print value of "screenAfterPlain"
#expect in report: the columns have swapped, so "B" now appears before "A"

@drag_and_drop_2
Scenario: drag exact on target
#---------- drag "<string>" and drop it on "<string>" with exact phrase ----------
  And click "Drag and Drop" with exact phrase
  And wait 2 secs
#drag "<string>" and drop it on "<string>" with exact phrase
  And drag "A" and drop it on "B" with exact phrase
  And wait 2 secs
  And read screen and save it as "screenAfterTargetExact"
  And print value of "screenAfterTargetExact"
#expect in report: the columns have swapped, so "B" now appears before "A"

@drag_and_drop_3
Scenario: drag exact on source
#---------- drag "<string>" with exact phrase and drop it on "<string>" ----------
  And click "Drag and Drop" with exact phrase
  And wait 2 secs
#drag "<string>" with exact phrase and drop it on "<string>"
  And drag "A" with exact phrase and drop it on "B"
  And wait 2 secs
  And read screen and save it as "screenAfterSourceExact"
  And print value of "screenAfterSourceExact"
#expect in report: the columns have swapped, so "B" now appears before "A"

@drag_and_drop_4
Scenario: drag exact on both
#---------- drag "<string>" with exact phrase and drop it on "<string>" with exact phrase ----------
  And click "Drag and Drop" with exact phrase
  And wait 2 secs
#drag "<string>" with exact phrase and drop it on "<string>" with exact phrase
  And drag "A" with exact phrase and drop it on "B" with exact phrase
  And wait 2 secs
  And read screen and save it as "screenAfterBothExact"
  And print value of "screenAfterBothExact"
#expect in report: the columns have swapped, so "B" now appears before "A"