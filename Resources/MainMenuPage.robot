*** Settings ***
Library      SeleniumLibrary
Resource     ../Resources/PageBase.robot
Resource     ../Resources/LoginPage.robot


*** Variables ***
${leave_menu}    xpath=//span[contains(.,'Leave')]



*** Keywords ***
Open leave Menu
    click link    ${leave_menu}