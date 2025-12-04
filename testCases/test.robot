*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

# change depending on using local or jenkins from % to $
${REMOTE_URL}                https://%{BROWSERSTACK_USERNAME}:%{BROWSERSTACK_ACCESS_KEY}@hub.browserstack.com/wd/hub
*** Keywords ***

*** Test Cases ***

#LOGIN_TEST
##    Sign Up
#    Log in
#    Close Browser

CONTACT_FUNCTIONALITY
    Contact
    Close Browser

BUY_PRODUCT
    Buy Product
    Close Browser

BUY_PRODUCT_NEGATIVE
    Buy Product Empty Fields
    Close Browser

DELETE_ELEMENT_FROM_CART
    Delete Element From Cart
    Close Browser

CATEGORY_SWITCH
    Switch Category
    Close Browser

LOGOUT_TEST
    [Setup]    Log in
    Log Out
    Close Browser
