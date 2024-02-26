***Settings***
Library                 SeleniumLibrary
Library                 OperatingSystem
Library                 Telnet
Variables               ../Login/loginElement.yaml

***Variables***
${Browser_Chrome}     chrome
${Login_URL}          https://www.saucedemo.com/
${DELAY}              0
${WAIT}               3
${ValidUsername}      standard_user
${ValidPassword}      secret_sauce
${LockedUsername}     locked_out_user

***Keywords***
Open Browsers
    Open Browser          ${Login_URL}   ${Browser_Chrome}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

 Login Page Should Be Open
    Title Should Be    Swag Labs

Input Login Username
    [Arguments]       ${email}
    Input Text        ${txtUsername}     ${email}

Input Login Password
    [Arguments]       ${password}
    Input Text        ${txtPassword}     ${password}

Click login button
    Click Element     ${btnLogin}

Success Login
     Wait Until Element Is Visible    ${lblHomePage}        ${WAIT}

Error Can't Login Locked Account
     Wait Until Element Is Visible    ${lblErrorLockedAccount}        ${WAIT}

Close Browsers
    Close Browser

