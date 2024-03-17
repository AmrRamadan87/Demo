*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}       chrome
${HRM_URL}       https://opensource-demo.orangehrmlive.com/


*** Keywords ***
Open HRM site
     Open Browser  about:blank     ${BROWSER}
     Go To                         ${HRM_URL}
     Maximize Browser Window

Close web browser
    Close All Browsers