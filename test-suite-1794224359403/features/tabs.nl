Feature: tabs windows frames

@tabs
Scenario: tab, window and auto close steps
  And enable auto close for new tabs
  And click "Multiple Windows"
  And click "Click Here"
  And wait 2 secs
#get tab count and save it as "<string>"
  And get tab count and save it as "tabCount"
  And print value of "tabCount"
  And check that variable {tabCount} is equals to "2"
#get window count and save it as "<string>"
  And get window count and save it as "windowCount"
  And print value of "windowCount"
  And check that variable {windowCount} is equals to "2"
#switch to last opened tab
  And switch to last opened tab
  And check that screen contains "New Window"
#switch to main tab
  And switch to main tab
  And check that screen contains "Opening a new window"
#switch to the <ordinal> tab (index 1 is the main page, index 2 is the first new tab)
  And switch to the 2nd tab
  And check that screen contains "New Window"
  And switch to the 1st tab
  And check that screen contains "Opening a new window"
#switch to last opened window
  And switch to last opened window
  And check that screen contains "New Window"
#switch to the <ordinal> window (index 1 is the main page)
  And switch to the 1st window
  And check that screen contains "Opening a new window"
  And switch to the 2nd window
  And check that screen contains "New Window"
  And switch to main tab
  And enable auto close for new tabs
  And click "Elemental Selenium"
  And wait 2 secs
  And get tab count and save it as "tabCountAuto"
  And print value of "tabCountAuto"
  And check that variable {tabCountAuto} is equals to "2"
#disable auto close for new tabs
  And disable auto close for new tabs
  And click "Elemental Selenium"
  And wait 2 secs
  And get tab count and save it as "tabCountKeep"
  And print value of "tabCountKeep"
  And check that variable {tabCountKeep} is equals to "3"
  And switch to last opened tab
  And check that screen contains "Elemental Selenium"
  And switch to main tab
  And check that screen contains "Opening a new window"
  And enable auto close for new tabs
#allow domain "<string>"
  And allow domain "elementalselenium"
  And click "Elemental Selenium"
  And wait 2 secs
  And get tab count and save it as "tabCountAllowed"
  And print value of "tabCountAllowed"
  And check that variable {tabCountAllowed} is equals to "4"
  And switch to last opened tab
  And check that screen contains "Elemental Selenium"
  And switch to main tab

@tabs_1
Scenario: switch to the <ordinal> frame (iframe page)
#switch to the 2nd frame failed: "Frame index 1 is not available. Available frames: 0 to 0". This page has only one frame
  And enable auto close for new tabs
  And click "Frames" with exact phrase
  And click "iFrame" with exact phrase
#switch to the <ordinal> frame
  And switch to the 1st frame
  And check that screen contains "Your content goes here."

@tabs_2
Scenario: switch to last opened frame (nested frames page)
  And enable auto close for new tabs
  And click "Nested Frames"
#switch to last opened frame
  And switch to last opened frame
  And check that screen contains "BOTTOM" and continue
  And check that screen contains "LEFT" and continue
  And check that screen contains "MIDDLE" and continue
  And check that screen contains "RIGHT" and continue

@tabs_3
Scenario: switch to child frame and switch to parent frame (nested frames page)
  And enable auto close for new tabs
  And click "Nested Frames"
#switch to the <ordinal> frame
  And switch to the 1st frame
  And check that screen contains "BOTTOM" and continue
  And check that screen contains "LEFT" and continue
#switch to (parent|child) frame
  And switch to child frame
  And check that screen contains "BOTTOM" and continue
  And check that screen contains "LEFT" and continue
  And switch to parent frame
  And check that screen contains "BOTTOM" and continue
  And check that screen contains "LEFT" and continue

@tabs_4
Scenario: which text the screen check sees after a frame switch (iframe page)
  And enable auto close for new tabs
  And click "Frames" with exact phrase
  And click "iFrame" with exact phrase
  And check that screen contains "An iFrame containing the TinyMCE WYSIWYG Editor" and continue
  And check that screen contains "Your content goes here." and continue
  And switch to the 1st frame
  And check that screen contains "An iFrame containing the TinyMCE WYSIWYG Editor" and continue
  And check that screen contains "Your content goes here." and continue
  And switch to parent frame
  And check that screen contains "An iFrame containing the TinyMCE WYSIWYG Editor" and continue
  And check that screen contains "Your content goes here." and continue

@tabs_5
Scenario: click and type in the editor frame (iframe page)
  And enable auto close for new tabs
  And click "Frames" with exact phrase
  And click "iFrame" with exact phrase
  And switch to the 1st frame
  And click on the element with id as "tinymce"
  And type "Hello frame"
  And check that screen contains "Hello frame" and continue