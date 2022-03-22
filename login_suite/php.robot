*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Set Selenium Implicit Wait    20s
    Open Browser        browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Go To    https://phptravels.net/
    Click Element    xpath=//button[@id='cookie_stop']
    Click Element    xpath=(//a[contains(text(),'Signup')])[3]
    Input Text    name=first_name    Rasel
    Input Text    last_name    Ahmed
    Input Text    xpath=//input[@placeholder='Phone']    7845695
    Input Text    xpath=//input[@placeholder='Email']    rasel@gmail.com
    Input Text    xpath=//input[@placeholder='Password']    rasel123
    Click Element    xpath=//span[@type='submit']
    #Select From List By Label    xpath=//span[@id='select2-account_type-container']     Supplier
    #Input Text    xpath=//input[@placeholder='Email']    rasel@gmail.com
    #Input Text    xpath=//input[@placeholder='Password']    rasel123
    #Click Element   xpath=//*[@id="fadein"]/div[1]/div/div[2]/div[2]/div/form/div[7]/button/span[1]
    #Click Element    xpath=//input[@role='searchbox']
    #Select From List By Label    xpath=//span[@id='select2-account_type-container']       Agent
    #Select From List By Label    xpath=//span[text()='Customer']
    #Click Element    xpath=//span[contains(text(),'Login')]
    #Select From List By Label       xpath=//*[@id="select2-account_type-container"]     Agent
    #Select From List By Label    xpath=select2-account_type-container       Supplier
    #Select From List By Label    xpath=(//span[contains(@class,"selection")])[2]     Supplier
