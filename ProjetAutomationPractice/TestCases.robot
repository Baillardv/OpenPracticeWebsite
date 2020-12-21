*** Settings ***
Library    SeleniumLibrary    
Test Setup    OpenPraticeURL
##Test Teardown    Close Browser
Resource    Ressources/KeywordsSheet.resource



*** Test Cases ***
OpenPraticeURL
    [Tags]    Regression tests 
    OpenPraticeURL

NewAccountCreation
#Random Email addresse generated for new account
    [Tags]    Regression tests     Requirements A.1
    Initialise Email Data
    I check if there is no existing account with my email address    
    I fill my personnal data
    My Account should be created
    

Login with invalid account
    [Tags]    Regression tests    Negative tests
    Login using an invalid account
    Authentication should failed

    
Purchase of 2 items
    [Tags]    Regression tests    Requirements P.1
    Initialise Email Data
    Login to my account
    I displayed all women clothes   
    I select the first women item 
    I continue my Shopping
    I select the second women item
    I will proceed to checkout
