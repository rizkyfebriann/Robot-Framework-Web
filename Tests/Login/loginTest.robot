***Settings***
Library                 SeleniumLibrary
Library                 OperatingSystem
Library                 Telnet
Resource                ../../Resources/Login/loginResource.robot
#Test Setup             Open The Browser
Test Teardown           Close Browsers

*** Test Cases ***
Valid Login
    Open Browsers
    Input Login Username    ${ValidUsername}
    Input Login Password    ${ValidPassword}
    Click login button
    Success Login

Login Locked Account
    Open Browsers
    Input Login Username    ${LockedUsername}
    Input Login Password    ${ValidPassword}
    Click login button
    Error Can't Login Locked Account