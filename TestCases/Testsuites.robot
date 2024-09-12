*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/OrderProductKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://www.saucedemo.com/inventory.html
${Username}    performance_glitch_user
${Password}    secret_sauce

*** Test Cases ***
LoginTest
    Open Browser    ${siteUrl}    ${Browser}
    Sleep    3seconds
    Enter Username    ${Username}
    Sleep    3seconds
    Enter password    ${password}
    Sleep    3seconds
    click login
    Sleep    3seconds
    verify successful login

*** Test Cases ***
OrderProductTest
    Wait Until Element Is Visible    ${btn_sauce_labs_bike_light}    ${10}
    btn_sauce_labs_bike_light
    Sleep    3seconds
    click add to basket
    Sleep    3seconds
    click back to homepage
    Sleep    3seconds
    Click sauce labs bolt tshirt
    Click Add To Cartt
    Click back to home
    Click sauce labs fleece jacket
    Click add to bucket
    Click back to previous page



    
    
