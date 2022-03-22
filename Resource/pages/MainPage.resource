*** Settings ***
Documentation   this file handles all menu in orange hrm

Resource    ../base/CommonFunctionality.resource
*** Variables ***
${PAGE_LOGIN_LOCATOR}   xpath=(//a[text()='Login'])[3]
${GOTIT_LOCATOR}        xpath=//button[@id='cookie_stop']
${FLIGHT_FROM_LOCATOR}      xpath=//input[@id='autocomplete']
${FLIGHT_TO_LOCATOR}        xpath=//input[@id='autocomplete2']
${HOTEL_CITY_LOCATOR}       xpath=//span[@id='select2-hotels_city-container']
${TRAVELER_LOCATOR}         xpath=//a[@role='button']
${ROOM_LOCATOR}            xpath=(//i[@class='la la-plus'])[1]
${ADULT_LOCATOR}        xpath=(//i[@class='la la-plus'])[3]
${CHILD_LOCATOR}        xpath=(//i[@class='la la-plus'])[4]
${NATIONALITY_LOCATOR}      xpath=//select[@id='nationality']
${HOTEL_SUBMIT_LOCATOR}     xpath=//span[@class='ladda-label']
*** Keywords ***
Click on login
    Click Element    ${PAGE_LOGIN_LOCATOR}
Click on Got_it
    Click Element    ${GOTIT_LOCATOR}
Flight From
    Click Element    ${FLIGHT_FROM_LOCATOR}
FLight From Name
    [Arguments]
    Input Text    ${FLIGHT_FROM_LOCATOR}    ${flight_from_name}
Fligth To
    Click Element    ${FLIGHT_TO_LOCATOR}
Fligth To Destination
    Input Text    ${FLIGHT_TO_LOCATOR}      ${flight_to_name}
Click Hotel City
    Click Element    ${HOTEL_CITY_LOCATOR}
Hotel City Name
    [Arguments]     ${hotel_city_name}
    Input Text    ${HOTEL_CITY_LOCATOR}     ${hotel_city_name}
Select Travelers
    Click Element    ${TRAVELER_LOCATOR}
Click Number of Rooms
    Click Element    ${ROOM_LOCATOR}
Number of Adult
    Click Element    ${ADULT_LOCATOR}
Number of Child
    Click Element    ${CHILD_LOCATOR}
Natiionality
    [Arguments]     ${nationality}
    Select From List By Value    ${NATIONALITY_LOCATOR}     IN
Hotel Confirmation
    Click Element    ${HOTEL_SUBMIT_LOCATOR}



