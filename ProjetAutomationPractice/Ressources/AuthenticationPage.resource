*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

#fields

${authenticationNewEmail}    xpath=//*[@id="email_create"]    
${authenticationExistingEmail}   xpath=//*[@id="email"]
${authenticationExistinPassword}   xpath=//*[@id="passwd"]

#buttons 

${authenticationSubmitNewAcc}    //*[@id="SubmitCreate"]
${authenticationSubmitExistingAcc}    //*[@id="SubmitLogin"]

