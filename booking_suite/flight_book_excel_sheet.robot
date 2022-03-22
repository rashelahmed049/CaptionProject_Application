*** Settings ***
Documentation   This suite will test the membership details
Resource      ../Resource/base/CommonFunctionality.resource
Resource    ../Resource/Pages/MainPage.resource
Resource    ../Resource/pages/MainPage.resource
Library    DataDriver   file=../excel_data/orange_data.xlsx      sheet_name=flight_book
Test Setup      Launch Browser
Test Teardown       Close Browser

Test Template      Book Flights
*** Test Cases ***
Book Flights
*** Keywords ***
Book Flights
    [Arguments]     ${flight_from_name}      ${flight_to_name}      ${flight_type}
    Click Element    xpath=//button[@id='cookie_stop']

    Click Element    xpath=//button[@id='cookie_stop']
    Click Element    xpath=//a[text()='flights']
    Input Text       xpath=(//input[@placeholder='Flying From'])[1]         ${flight_from_name}
    Input Text       xpath=(//input[@placeholder='To Destination'])[1]    ${flight_to_name}
    Click Element    xpath=//span[text()='1']
    Click Element    xpath=(//i[@class='la la-plus'])[1]
    Click Element    xpath=(//i[@class='la la-plus'])[2]
    Select From List By Value    xpath=//select[@id='flight_type']      ${flight_type}
    Click Element    xpath=//button[@id='flights-search']
    Page Should Contain    Dates

