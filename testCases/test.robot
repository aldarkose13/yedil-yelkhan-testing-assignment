*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

*** Keywords ***

*** Test Cases ***
LOGIN_TEST
    Sign Up
    Log in

CONTACT_FUNCTIONALITY
    Contact

BUY_PRODUCT
    Buy Product

BUY_PRODUCT_NEGATIVE
    Buy Product Empty Fields

DELETE_ELEMENT_FROM_CART
    Delete Element From Cart

CATEGORY_SWITCH
    Switch Category

LOGOUT_TEST
    [Setup]    Log in
    Log Out

