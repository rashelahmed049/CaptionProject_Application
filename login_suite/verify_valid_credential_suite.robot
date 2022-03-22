*** Settings ***
Documentation   This test will handle all the valid credential for login in PhpTravels webpage

Test Setup      Launch Browser
Test Teardown
Resource    ../Resource/pages/MainPage.resource
Resource    ../Resource/pages/LoginPage.resource

*** Test Cases ***
Verify Valid Credential
    Click on Got_it
    Click on login
    Input Email    rasel@gmail.com
    Input Password for Login    rasel123
    Click on registration Login
    Main Page Content    Welcome    Hi


