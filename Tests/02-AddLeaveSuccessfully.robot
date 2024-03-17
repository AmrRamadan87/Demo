*** Settings ***
Library          SeleniumHelperLibrary
Documentation    This is a Demo for Task Automation Test
Resource         ../Resources/PageBase.robot
Resource         ../Resources/LoginPage.robot
Resource         ../Resources/MainMenuPage.robot
Resource         ../Resources/LeavePage.robot

Test Setup       Open HRM site

Test Teardown    Close web browser


# robot -d results tests/02-AddLeaveSuccessfully.robot
*** Variables ***

${ENTERED_NAME}       Shonta Dietrich Blanda
${ENTERED_DATE}       2024-15-03
${USERNAME}           Admin
${PASSWORD}           admin123
*** Test Cases ***
Validate adding a new leave
    Login to HRM with valid data                    ${USERNAME}       ${PASSWORD}
    Adding leave with valid data successfully
    Verify that appearing sweet message








