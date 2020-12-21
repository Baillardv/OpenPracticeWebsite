*** Settings ***
Library    SeleniumLibrary 
Resource    MainPage.resource
Resource    UserData.resource
Resource    AuthenticationPage.resource  
Resource    CreateAccountPage.resource
Resource    ContinueOrNotShoppingCard.resource
Resource    PaymentSummary.resource
Library    FakerLibrary    locale=en_US


*** Variables ***

${URL}    http://automationpractice.com/index.php


*** Keywords ***

Initialise Email Data
    ${email}    FakerLibrary.Email
    Set Test Variable        ${email}        

OpenPraticeURL
    
    Open Browser    ${URl}    chrome
    
# LOGIN KEYWORDS

I check if there is no existing account with my email address
    Click Element    xpath=${mainPageSignInButton}     
    Wait Until Element Is Visible    ${authenticationNewEmail}    
    Input Text      ${authenticationNewEmail}     ${email}
    Click Button    ${authenticationSubmitNewAcc} 
    Wait Until Location Contains    account-creation    

I fill my personnal data
    #Use ressources from UserData / AuthenticationPage / CreationAccountPage
    Page Should Contain Element   xpath=//*[@id="id_gender1"]
    Select Radio Button    id_gender    1
    Input Text    ${CreateAccFirstName}    ${userValid}[Firstname]   
    Input Text    ${CreateAccLastName}    ${userValid}[Lastname]  
    Input Text    ${CreateAccEmail}    ${email}    
    Input Text    ${CreateAccPassword}    ${userValid}[Password]
    Select From List By Value    ${CreateAccDayOfBirth}    15    
    Select From List By Value    ${CreateAccMonthOfBirth}    10    
    Select From List By Value    ${CreateAccYearOfBirth}    1990   
    Input Text    ${CreateAccAddresseFirstName}    ${userValid}[Firstname]
    Input Text    ${CreateAccAddresseLastName}    ${userValid}[Lastname]
    Input Text    ${CreateAccAddresse}    ${userValid}[Adresse]
    Input Text    ${CreateAccAddresseCity}    ${userValid}[City]
    Select From List By Value    ${CreateAccAdresseState}    21
    Input Text    ${CreateAccAdressePostCode}    ${userValid}[Postalcode]
    Input Text    ${CreateAccMobilePhone}    ${userValid}[Mobile]
    Input Text    ${CreateAccAlias}    ${userValid}[AliasAdresse]
    Click Element    ${CreateAccSubmitButton}     
    
My Account should be created
    Page Should Contain    Welcome to your account  
    
Login to my account
    Click Element    xpath=${mainPageSignInButton}  
    Wait Until Element Is Visible    ${authenticationNewEmail}
    Input Text     ${authenticationExistingEmail}       ${userValid}[Email]
    Input Text     ${authenticationExistinPassword}      ${userValid}[Password]
    Click Element    ${authenticationSubmitExistingAcc}     

### NEGATIVE KEYWORDS  

 Login using an invalid account
    Click Element    xpath=${mainPageSignInButton}  
    Wait Until Element Is Visible    ${authenticationNewEmail}
    Input Text     ${authenticationExistingEmail}      toto.toto@toto.lu
    Input Text     ${authenticationExistinPassword}      ${userValid}[Password]
    Click Element    ${authenticationSubmitExistingAcc}     


Authentication should failed
    Page Should Contain    Authentication failed  



# SHOPPING KEYWORDS
    
I displayed all women clothes
    Set Selenium Timeout    15
    Click Element    ${mainWomenButton} 
    Wait Until Element Is Visible    ${mainCountofItems}  
    

I select the first women item
    Click Element    ${firstItemsDisplayedAddCard}    
    
I select the second women item
    Click Element    ${SecondItemsDisplayedAddCard}    
    
I continue my Shopping
    Wait Until Element Is Visible    ${cardContinueShopping}  
    Click Element    ${cardContinueShopping}
    
# PAYMENT KEYWORD
    
I will proceed to checkout
    Wait Until Element Is Visible    ${cardProceedToPayment}
    Click Element    ${cardProceedToPayment}
    Wait Until Element Is Visible    ${checkPaymentSummaryPage}  
    #Click Element    ${proceedToPayment} 
    Click Element    ${proceedToCheckout}
    Click Element    ${proceedAdresse}
    Click Element    ${acceptGt&c}
    Click Element    ${proceedShipping}
    Wait Until Page Contains    Please choose your payment method   
    Click Element    ${buttonPaymentBycheck}     
    Click Element    ${confirmMyOrder}
    ##Get Value    //*[@id="center_column"]/div/text()[4]
        

I proceed to payment
    Click Element    ${mainWomenButton} 
    







    
    
