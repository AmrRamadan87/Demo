*** Settings ***
Library          SeleniumHelperLibrary
Documentation    This is a Demo for Task Automation Test
Resource         ../Resources/PageBase.robot
Resource         ../Resources/LoginPage.robot
Resource         ../Resources/MainMenuPage.robot

Test Setup     Open HRM site
Test Teardown    Close web browser

#Run the Script:
# robot -d results tests/01-LoginTest.robot
*** Variables ***
${USERNAME}   Admin
${PASSWORD}   admin123

*** Test Cases ***
Verify that user can login successfully
    [Documentation]    Login with valid data
    [Tags]    Smoke
    login to hrm with valid data    ${USERNAME}    ${PASSWORD}
    Verify that user logged successfully


