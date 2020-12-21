*** Settings ***
Library    SeleniumLibrary    

*** Variables ***


${AccountCreationTitle}    Create an account
${CreateAccGender}    //*[@name="id_gender"]
${CreateAccFirstName}   //*[@id="customer_firstname"]
${CreateAccLastName}   //*[@id="customer_lastname"]
${CreateAccEmail}       //*[@id="email"]
${CreateAccPassword}   //*[@id="passwd"]
${CreateAccDayOfBirth}   //*[@id="days"] 
${CreateAccMonthOfBirth}   //*[@id="months"]
${CreateAccYearOfBirth}   //*[@id="years"]
${CreateAccAddresseFirstName}   //*[@id="firstname"]
${CreateAccAddresseLastName}   //*[@id="lastname"]
${CreateAccAddresse}   //*[@id="address1"]
${CreateAccAddresseCity}   //*[@id="city"]
${CreateAccAdresseState}    //*[@id="id_state"]
${CreateAccAdresseCountry}     //*[@id="id_country"]
${CreateAccAdressePostCode}     //*[@id="postcode"]
${CreateAccMobilePhone}  //*[@id="phone_mobile"]
${CreateAccAlias}  //*[@id="alias"]
${CreateAccSubmitButton}    //*[@id="submitAccount"]



