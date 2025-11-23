*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***
${REMOTE_URL}                https://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub.browserstack.com/wd/hub
*** Keywords ***

*** Test Cases ***
LOGIN_CHROME    
    Log in    chrome
LOGIN_FIREFOX    
    Log in    firefox
LOGIN_SAFARI    
    Log in    safari
#LOGIN_TEST
#    Sign Up
#    Log in

#CONTACT_FUNCTIONALITY
#    Contact
CONTACT_CHROME    
    Contact    chrome
CONTACT_FIREFOX    
    Contact    firefox
CONTACT_SAFARI    
    Contact    safari

#BUY_PRODUCT
#    Buy Product

BUY_PRODUCT_CHROME    
    Buy Product    chrome
BUY_PRODUCT_FIREFOX    
    Buy Product    firefox
BUY_PRODUCT_SAFARI    
    Buy Product    safari
    
#BUY_PRODUCT_NEGATIVE
#    Buy Product Empty Fields
BUY_PRODUCT_NEGATIVE_CHROME    
    Buy Product Empty Fields    chrome
BUY_PRODUCT_NEGATIVE_FIREFOX    
    Buy Product Empty Fields    firefox
BUY_PRODUCT_NEGATIVE_SAFARI    
    Buy Product Empty Fields    safari

#DELETE_ELEMENT_FROM_CART
#    Delete Element From Cart
DELETE_ELEMENT_FROM_CART_CHROME    
    Delete Element From Cart    chrome
DELETE_ELEMENT_FROM_CART_FIREFOX    
    Delete Element From Cart    firefox
DELETE_ELEMENT_FROM_CART_SAFARI    
    Delete Element From Cart    safari

#CATEGORY_SWITCH
#    Switch Category
CATEGORY_SWITCH_CHROME    
    Switch Category    chrome
CATEGORY_SWITCH_FIREFOX    
    Switch Category    firefox
CATEGORY_SWITCH_SAFARI    
    Switch Category    safari

#LOGOUT_TEST
#    [Setup]    Log in
#    Log Out
LOGOUT_TEST_CHROME    
    [Setup]    Log in    chrome
    Log Out    chrome
LOGOUT_TEST_FIREFOX    
    [Setup]    Log in    firefox
    Log Out    firefox
LOGOUT_TEST_SAFARI    
    [Setup]    Log in    safari
    Log Out    safari
