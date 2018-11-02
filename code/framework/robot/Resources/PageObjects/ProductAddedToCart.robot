*** Settings ***

Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot

*** Keywords ***

Wait Until Page Loads
  Wait Until Page Contains Element  id:huc-v2-confirm-text-container
