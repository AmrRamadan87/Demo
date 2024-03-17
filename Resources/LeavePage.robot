*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/PageBase.robot
Resource    ../Resources/LoginPage.robot
Resource    ../Resources/MainMenuPage.robot


*** Variables ***
${Leave_Button}         link:Leave
${ASSIGN_BUTTON}        xpath=//a[contains(.,'Assign Leave')]
${EMPLOYEE_NAME}        xpath=//input[@placeholder='Type for hints...']
${LEAVE_TYPE}           xpath=//div[@class='oxd-select-text-input'][contains(.,'-- Select --')]
${DATE_FIELD}           xpath=(//input[@placeholder='yyyy-dd-mm'])[1]
${SUBMIT_BUTTON_Leave}  xpath=//button[@type='submit']
${OK_BUTTON_Leave}      xpath=//button[@type='button'][contains(.,'Ok')]

*** Keywords ***
Adding leave with valid data successfully
    sleep                             5s
    #Wait Until Element Is Visible     ${Leave_Button}
    click link                        ${Leave_Button}
    Wait Until Element Is Visible     ${ASSIGN_BUTTON}
    click link                        ${ASSIGN_BUTTON}
    Wait Until Element Is Visible     ${EMPLOYEE_NAME}
    input text                        ${EMPLOYEE_NAME}          Rahul
    sleep                             5s
    press keys                        NONE    ARROW_DOWN
    sleep                             5s
    press keys                        NONE    ENTER
    sleep                             5s
    click element                     ${LEAVE_TYPE}
    press keys                        NONE    ARROW_DOWN
    sleep                             5s
    press keys                        NONE    ENTER
    sleep                             5s
    input text                        ${DATE_FIELD}       2024-15-03
    sleep                             5s
    press keys                        NONE    TAB
    sleep                             5s
    click button                      ${SUBMIT_BUTTON_Leave}
    wait until element is visible     ${OK_BUTTON_Leave}
    click button                      ${OK_BUTTON_Leave}
    sleep                             2s
Verify that appearing sweet message
    page should contain               Success



