*** Settings ***
Library  SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py

*** Keywords ***
Log in
    [Arguments]    ${BROWSER}
    
     &{caps}=    Create Dictionary
    ...    browser=${BROWSER}
    ...    browser_version=latest
    ...    os=Windows
    ...    os_version=11
    ...    name=Login Test
    ...    build=Robot Local Build


#    Open Browser    ${baseUrl}      Chrome  options=binary_location=r"C:\\Users\\User\\Desktop\\KBTU\\Testing\\chrome-win64\\chrome.exe"
    Create Webdriver    Remote    command_executor=${REMOTE_URL}    desired_capabilities=${caps}
    Go To    ${baseUrl}
    Maximize Browser Window
    wait until page contains element    ${logInButton}    timeout=80      error=logInButtonNotFound
    sleep   1s
    click element   ${logInButton}
    wait until page contains element     ${loginUsernameField}    timeout=80      error=logInButtonNotFound
    sleep   1s
    input text      ${loginUsernameField}      ${login}
    Input Password    ${loginPasswordField}      ${password}
    Sleep    1s
    Click Element    ${logInFormButton}
    Sleep    2s

Close Browser
    Close All Browsers

Sign Up
    [Arguments]    ${BROWSER}

     &{caps}=    Create Dictionary
    ...    browser=${BROWSER}
    ...    browser_version=latest
    ...    os=Windows
    ...    os_version=11
    ...    name=Login Test
    ...    build=Robot Local Build
#    Open Browser    ${baseUrl}      Chrome  options=binary_location=r"C:\\Users\\User\\Desktop\\KBTU\\Testing\\chrome-win64\\chrome.exe"
    Create Webdriver    Remote    command_executor=${REMOTE_URL}    desired_capabilities=${caps}
    Go To    ${baseUrl}
    Maximize Browser Window
    wait until page contains element    ${signUpButton}    timeout=80      error=logInButtonNotFound
    sleep   1s
    click element   ${signUpButton}
    wait until page contains element     ${signUpUsername}    timeout=80      error=logInButtonNotFound
    sleep   1s
    Input Text    ${signUpUsername}    ${login}
    Sleep    2s
    Input Password    ${signUpPassword}    ${password}
    Sleep    2s
    Click Element    ${signUpFormButton}
    Sleep    3s



Log Out
    wait until page contains element     ${logoutButton}    timeout=80      error=logOutButtonNotFound
    Sleep    1s
    Click Element    ${logoutButton}

Buy Product
    [Arguments]    ${BROWSER}

     &{caps}=    Create Dictionary
    ...    browser=${BROWSER}
    ...    browser_version=latest
    ...    os=Windows
    ...    os_version=11
    ...    name=Login Test
    ...    build=Robot Local Build
#    Open Browser    ${baseUrl}      Chrome  options=binary_location=r"C:\\Users\\User\\Desktop\\KBTU\\Testing\\chrome-win64\\chrome.exe"
    Create Webdriver    Remote    command_executor=${REMOTE_URL}    desired_capabilities=${caps}
    Go To    ${baseUrl}
    Maximize Browser Window
    wait until page contains element     ${card}    timeout=80      error=CardNotFound
    Sleep    1s
    Click Element    ${card}
    wait until page contains element     ${addToCartBtn}    timeout=80      error=addToCartBtnNotFound
    Click Element    ${addToCartBtn}
    Sleep    1s
    Handle Alert    accept
    Sleep    1s
    wait until page contains element     ${cartNav}    timeout=80      error=cartNavNotFound
    Click Element    ${cartNav}
    Sleep    5s
    wait until page contains element     ${placeOrderBtn}    timeout=80      error=placeOrderBtnNotFound
    Click Element    ${placeOrderBtn}
    wait until page contains element     ${placeOrderNameField}    timeout=80      error=placeOrderNameFieldNotFound
    Sleep    2s
    input text      ${placeOrderNameField}      ${placeOrderName}
    input text      ${placeOrderCountryField}   ${placeOrderCountry}
    input text      ${placeOrderCityField}      ${placeOrderCity}
    input text      ${placeOrderCreditCardField}      ${placeOrderCreditCard}
    input text      ${placeOrderMonthField}      ${placeOrderMonth}
    input text      ${placeOrderYearField}      ${placeOrderYear}
    Click Element   ${purchaseButton}
    Sleep    2s
    ${text}=    Get Text    ${successMessage}
    Should Contain    ${text}    Thank you for your purchase!
    wait until page contains element     ${purchaseOkButton}    timeout=80      error=successAlertNotFound
    Sleep    1s
    Click Button      ${purchaseOkButton}


Buy Product Empty Fields
    [Arguments]    ${BROWSER}

     &{caps}=    Create Dictionary
    ...    browser=${BROWSER}
    ...    browser_version=latest
    ...    os=Windows
    ...    os_version=11
    ...    name=Login Test
    ...    build=Robot Local Build
#    Open Browser    ${baseUrl}      Chrome  options=binary_location=r"C:\\Users\\User\\Desktop\\KBTU\\Testing\\chrome-win64\\chrome.exe"
    Create Webdriver    Remote    command_executor=${REMOTE_URL}    desired_capabilities=${caps}
    Go To    ${baseUrl}
    Maximize Browser Window
    wait until page contains element     ${card}    timeout=80      error=CardNotFound
    Sleep    1s
    Click Element    ${card}
    wait until page contains element     ${addToCartBtn}    timeout=80      error=addToCartBtnNotFound
    Click Element    ${addToCartBtn}
    Sleep    1s
    Handle Alert    accept
    Sleep    1s
    wait until page contains element     ${cartNav}    timeout=80      error=cartNavNotFound
    Click Element    ${cartNav}
    Sleep    5s
    wait until page contains element     ${placeOrderBtn}    timeout=80      error=placeOrderBtnNotFound
    Click Element    ${placeOrderBtn}
    wait until page contains element     ${placeOrderNameField}    timeout=80      error=placeOrderNameFieldNotFound
    Sleep    2s
    Click Element   ${purchaseButton}
    Sleep    2s
    Alert Should Be Present   Please fill out Name and Creditcard.

Switch Category
    [Arguments]    ${BROWSER}

     &{caps}=    Create Dictionary
    ...    browser=${BROWSER}
    ...    browser_version=latest
    ...    os=Windows
    ...    os_version=11
    ...    name=Login Test
    ...    build=Robot Local Build
#    Open Browser    ${baseUrl}      Chrome  options=binary_location=r"C:\\Users\\User\\Desktop\\KBTU\\Testing\\chrome-win64\\chrome.exe"
    Create Webdriver    Remote    command_executor=${REMOTE_URL}    desired_capabilities=${caps}
    Go To    ${baseUrl}
    Maximize Browser Window
    wait until page contains element     ${card}    timeout=80      error=CardNotFound
    Sleep    2s
    wait until page contains element     ${categoryLaptop}    timeout=80      error=CardNotFound
    Click Element    ${categoryLaptop}
    sleep    2s
    wait until page contains element     ${cardOne}    timeout=80      error=CardNotFound
    ${card_text}=     Get Text    ${cardOne}
    Should Contain    ${card_text}    Sony vaio i5
    Click Element    ${cardOne}
    Sleep    2s

Delete Element From Cart
     [Arguments]    ${BROWSER}

     &{caps}=    Create Dictionary
    ...    browser=${BROWSER}
    ...    browser_version=latest
    ...    os=Windows
    ...    os_version=11
    ...    name=Login Test
    ...    build=Robot Local Build
#    Open Browser    ${baseUrl}      Chrome  options=binary_location=r"C:\\Users\\User\\Desktop\\KBTU\\Testing\\chrome-win64\\chrome.exe"
    Create Webdriver    Remote    command_executor=${REMOTE_URL}    desired_capabilities=${caps}
    Go To    ${baseUrl}
    Maximize Browser Window
    wait until page contains element     ${card}    timeout=80      error=CardNotFound
    Sleep    1s
    Click Element    ${card}
    wait until page contains element     ${addToCartBtn}    timeout=80      error=addToCartBtnNotFound
    Click Element    ${addToCartBtn}
    Sleep    1s
    Handle Alert    accept
    Sleep    1s
    wait until page contains element     ${addToCartBtn}    timeout=80      error=addToCartBtnNotFound
    Click Element    ${addToCartBtn}
    Sleep    1s
    Handle Alert    accept
    Sleep    1s
    wait until page contains element     ${cartNav}    timeout=80      error=cartNavNotFound
    Click Element    ${cartNav}
    Sleep    5s
    wait until page contains element     ${deleteElementFromCart1}    timeout=80      error=deleteElementFromCart1otFound
    Click Element    ${deleteElementFromCart1}
    Sleep    5s
    ${row_count}=    Get Element Count    ${cartTable}
    Should Be Equal As Integers    ${row_count}    1


Contact
     [Arguments]    ${BROWSER}

     &{caps}=    Create Dictionary
    ...    browser=${BROWSER}
    ...    browser_version=latest
    ...    os=Windows
    ...    os_version=11
    ...    name=Login Test
    ...    build=Robot Local Build
#    Open Browser    ${baseUrl}      Chrome  options=binary_location=r"C:\\Users\\User\\Desktop\\KBTU\\Testing\\chrome-win64\\chrome.exe"
    Create Webdriver    Remote    command_executor=${REMOTE_URL}    desired_capabilities=${caps}
    Go To    ${baseUrl}
    Maximize Browser Window
    wait until page contains element    ${contactNav}    timeout=80      error=contactNavNotFound
    sleep   1s
    click element   ${contactNav}
    wait until page contains element     ${contactEmailField}    timeout=80      error=contactEmailFieldNotFound
    Sleep    2s
    input text      ${contactEmailField}      ${contactEmailText}
    input text      ${contactNameField}   ${contactNameText}
    input text      ${contactMessageField}      ${contactMessageText}
    Click Element   ${contactSendMessageButton}
    Sleep    2s
    Alert Should Be Present   Thanks for the message!!


