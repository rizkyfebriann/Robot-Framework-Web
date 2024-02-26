***Settings***
Library                 SeleniumLibrary
Library                 OperatingSystem
Library                 Telnet
Resource                ../../Resources/Login/loginResource.robot
Resource                ../../Resources/Homepage/homepageResource.robot
Resource                ../../Resources/Checkout/checkoutResource.robot
#Test Setup              Valid Login
Test Teardown           Close Browsers

*** Test Cases ***
Checkout backpack until finished order
    Open Browsers
    Input Login Username    ${ValidUsername}
    Input Login Password    ${ValidPassword}
    Click login button
    Success Login
    Add Backpack to Cart
    Go to Shopping Cart page
    Go to Checkout page
    Fill information checkout : first name          ${firstName}
    Fill information checkout : last name           ${lastName}
    Fill information checkout : postal code         ${postalCode}
    Continue to overview checkout page and finish
    Successfully checkout backpack item