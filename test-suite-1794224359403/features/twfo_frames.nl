Feature: twfo_frames

@twfo
Scenario: switch to the <ordinal> frame (1st) is the main page
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
  And switch to the 1st frame
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"

@twfo
Scenario: switch to the <ordinal> frame (2nd) is the sandboxed iframe
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
  And switch to the 2nd frame
  And wait 2 secs
  And check that screen contains "Frame: sandboxed"

@twfo
Scenario: switch to the <ordinal> frame (3rd) is the srcdoc iframe
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
  And switch to the 3rd frame
  And wait 2 secs
  And check that screen contains "Hello from srcdoc"

@twfo
Scenario: switch to the <ordinal> frame (4th) is the shadow DOM iframe
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
  And switch to the 4th frame
  And wait 2 secs
  And check that screen contains "Frame: shadow"

@twfo
Scenario: switch to last opened frame is the shadow DOM iframe
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
#switch to last opened frame (the shadow DOM iframe is added by the page script after the other two)
  And switch to last opened frame
  And wait 2 secs
  And check that screen contains "Frame: shadow"

@twfo
Scenario: switch to child frame (from the main page, the first iframe)
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
#switch to child frame (the doc does not say which child, this scenario assumes the first)
  And switch to child frame
  And wait 2 secs
  And check that screen contains "Frame: sandboxed"

@twfo
Scenario: switch to child frame (from the main page, the last iframe)
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
#switch to child frame (the doc does not say which child, this scenario assumes the last)
#exactly one of this and the scenario above should pass, if child frame enters one of the iframes
  And switch to child frame
  And wait 2 secs
  And check that screen contains "Frame: shadow"

@twfo
Scenario: switch to parent frame (back to the main page from the srcdoc iframe)
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
  And switch to the 3rd frame
  And wait 2 secs
  And check that screen contains "Hello from srcdoc"
#switch to parent frame
  And switch to parent frame
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"

@twfo
Scenario: click inside the sandboxed iframe, then read the result on the main page
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
  And switch to the 2nd frame
  And wait 2 secs
#click: the button is inside the iframe and sends a message to the main page
  And click "Send a message to the page"
  And wait 2 secs
#expect: the button text changes inside the iframe
  And check that screen contains "Message sent"
  And switch to parent frame
  And wait 2 secs
#expect: the main page shows the message, which only happens if the click really reached the button
  And check that screen contains "Message from the sandboxed frame: hello"

@twfo
Scenario: enter text in the srcdoc iframe input and read it back
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
  And switch to the 3rd frame
  And wait 2 secs
#enter "<string>" into "<string>" (the input in the srcdoc iframe has the placeholder "Type here")
  And enter "aaaa" into "Type here"
  And wait 2 secs
  And read value from "Type here" and save it as "typedText"
  And print value of "typedText"
#expect: aaaa
  And check that variable {typedText} is equals to "aaaa" and continue

@twfo
Scenario: control (expected to FAIL): text inside an iframe with no frame switch
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
#"Hello from srcdoc" is only inside the srcdoc iframe
#a PASS here means the text check searches inside frames by itself, so every frame check above passes without the switch proving anything
  And check that screen contains "Hello from srcdoc"

@twfo
Scenario: control (expected to FAIL): the 3rd frame text after switching to the 2nd frame
#reset: back to the home page, then the Advanced Iframes page
  And switch to main tab
  And wait 2 secs
  And click on the element with class "home-link"
  And wait 2 secs
  And check that screen contains "Welcome to the-internet"
  And click "Advanced Iframes" with exact phrase
  And wait 2 secs
  And check that screen contains "Three kinds of iframes"
  And switch to the 2nd frame
  And wait 2 secs
#"Hello from srcdoc" is in the 3rd frame, not the 2nd
#a PASS here means the text check ignores which frame is selected
  And check that screen contains "Hello from srcdoc"