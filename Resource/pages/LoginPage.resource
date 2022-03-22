*** Settings ***
Library    SeleniumLibrary

Documentation   This file handles all operation in the login page
Resource    ../base/CommonFunctionality.resource

*** Variables ***

${EMAIL_LOCATOR}        xpath=//input[@placeholder='Email']
${PASSWORD_LOCATOR}     xpath=//input[@type='password']
${ACCOUNT_LOGIN_LOCATOR}        xpath=(//button[@type='submit'])[1]

*** Keywords ***
Click on registration Login
    Click Element    ${ACCOUNT_LOGIN_LOCATOR}
Input Email
    [Arguments]     ${email}
    Input Text    ${EMAIL_LOCATOR}      ${email}
Input Password for Login
    [Arguments]     ${password}
     Input Text    ${PASSWORD_LOCATOR}      ${password}
Main Page Content
    [Arguments]     ${text1}    ${text2}
    Page Should Contain    ${text1}
    Page Should Contain    ${text2}
Invalid Message
    [Arguments]     ${text1}
    Page Should Contain    ${text1}
