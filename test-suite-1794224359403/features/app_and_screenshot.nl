@web_remaining @app_and_screenshot
Feature: app_and_screenshot
#STATUS: written only. Not run in Studio. Step wording matched against Command Reference v1.9.1 syntax lines.
#PURPOSE: app-management and evidence steps that apply to web and are not in features.zip.
#  capture screenshot, list all active apps, store current app identifier in variable, verify current app is.
#NOT WRITTEN ON PURPOSE (ask the mentor first, see the coverage file):
#  switch to app / reset app / close app: need the app profile id that Studio really has (the reference only shows "default" as an example).
#  launch web app: documented, but file 02 records a crash of the tool after it. Do not run it without the mentor knowing.
#  launch mobile / desktop / mainframe / IBM i / server app, and the Desktop-only group: not web.
#RUN: fresh browser on the home page. The screenshot is saved under target/reports/screenshots (reference, p.38). Check it exists on the Studio machine.

@rem_app_1
Scenario: list all active apps, store the current app id and verify it
  And list all active apps
  And store current app identifier in variable "currentApp"
  And print value of "currentApp"
#verify current app is "<string>" with a variable (the reference shows verify current app is "{expectedApp}")
  And verify current app is "{currentApp}"


@rem_app_2 @probe
Scenario: verify current app is with a wrong id must fail
#Expect this scenario to FAIL on the last step. If it passes, verify current app is does not check anything.
  And store current app identifier in variable "currentApp"
  And verify current app is "no-such-app-12345"

@rem_screenshot_1
Scenario: capture screenshot on web
  And click on the element with class "home-link"
  And check that screen contains "Welcome to the-internet"
  And capture screenshot
  And click "Checkboxes" with exact phrase
  And capture screenshot
  And check that screen contains "checkbox 1"
#Open the report: two screenshots should be attached, one of the home page and one of Checkboxes.
 