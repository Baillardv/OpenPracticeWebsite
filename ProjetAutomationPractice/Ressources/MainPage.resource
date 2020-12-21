*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${mainPageSignInButton}   //a[@class="login"]
${mainPageContactUs}     //*[@id="contact-link"]/a
${mainWomenButton}    //*[@class="sf-with-ul" and text()="Women"]
${mainCountofItems}    //*[contains(text(), "Showing 1 -")]



#### ITEMS SELECTIONS  - Next step is to find a way to create variable

${firstItemsDisplayedAddCard}    //*[@data-id-product="1"]    
${SecondItemsDisplayedAddCard}    //*[@data-id-product="2"]    
