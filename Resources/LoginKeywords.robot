*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${siteUrl}    ${Browser}
    Open Browser    ${siteUrl}    ${Browser}
    Maximize Browser Window
    
Enter Username
    [Arguments]    ${Username}
    Input Text    ${txt_username}    ${Username}
    
Enter password
    [Arguments]    ${password}
    Input Text    ${txt_password}    ${password}
    
click login
    Click Button    ${btn_login}

verify successful login
    Get Title

Close my browsers
    Close All Browsers