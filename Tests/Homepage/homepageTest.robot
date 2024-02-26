***Settings***
Library                 SeleniumLibrary
Library                 OperatingSystem
Library                 Telnet
Resource                ../../Resources/Login/loginResource.robot
Resource                ../../Resources/Homepage/homepageResource.robot
#Test Setup              Valid Login
Test Teardown           Close Browsers

*** Test Cases ***
Add backpack to shopping cart
    Open Browsers
    Input Login Username    ${ValidUsername}
    Input Login Password    ${ValidPassword}
    Click login button
    Success Login
    Add Backpack to Cart
    Go to Shopping Cart page