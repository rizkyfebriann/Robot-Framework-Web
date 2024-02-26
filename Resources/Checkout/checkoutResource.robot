***Settings***
Library                 SeleniumLibrary
Library                 OperatingSystem
Library                 Telnet
Variables               ../Checkout/checkoutElement.yaml

***Variables***
${firstName}          Rizky
${lastName}           Febrian
${postalCode}         12345678

***Keywords***
Go to Checkout page
    Click Element     ${btnCheckout}

Fill information checkout : first name
    [Arguments]       ${firstName}
    Input Text        ${txtFirstName}     ${firstName}

Fill information checkout : last name
    [Arguments]       ${lastName}
    Input Text        ${txtLastName}     ${lastName}

Fill information checkout : postal code
    [Arguments]       ${postalCode}
    Input Text        ${txtPostalCode}     ${postalCode}

Continue to overview checkout page and finish
    Click Element     ${btnContinueCheckout}
    Click Element     ${btnFinishCheckout}

Successfully checkout backpack item
    Wait Until Element Is Visible    ${lblThankYouForOrder}    ${WAIT}