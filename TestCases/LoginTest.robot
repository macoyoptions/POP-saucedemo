*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://www.saucedemo.com/inventory.html
${Username}    performance_glitch_user
${Password}    secret_sauce

*** Test Cases ***
LoginTest
    Open Browser    ${siteUrl}    ${Browser}
    Enter Username    ${Username}
    Enter password    ${password}
    click login
    Sleep    3seconds
    verify successful login
    Close my browsers
    
    
