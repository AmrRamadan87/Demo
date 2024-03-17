*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/PageBase.robot
Resource    ../Resources/LoginPage.robot
Resource    ../Resources/MainMenuPage.robot


*** Variables ***
${USERNAME_FIELD}               xpath=//input[@name='username']
${PASSWORD_FIELD}               xpath=//input[@type='password']
${SUBMIT_BUTTON_LOGIN_PAGE}     xpath=//button[@type='submit']
${Verification_statement}       xpath=//h6[contains(.,'Dashboard')]

*** Keywords ***

Login to HRM with valid data
    Set Selenium Speed    0.2s
    [Arguments]     ${USERNAME_VALUE}       ${PASSWORD_VALUE}
    #Login with admin credintials
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Input Text                       ${USERNAME_FIELD}    ${USERNAME_VALUE}
    Input Text                       ${PASSWORD_FIELD}    ${PASSWORD_VALUE}
    #Press submit
    Click Element                    ${SUBMIT_BUTTON_LOGIN_PAGE}


Verify that user logged successfully
    page should contain       Dashboard