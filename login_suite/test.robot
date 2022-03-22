*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Set Selenium Implicit Wait    20s
    Open Browser        browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Go To    https://demos.telerik.com/kendo-ui/dropdownlist/index
    Click Element    id=onetrust-accept-btn-handler
    Select From List By Label    //span[@class='k-input-value-text']        Beverages