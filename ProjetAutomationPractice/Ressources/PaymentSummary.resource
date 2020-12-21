*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${checkPaymentSummaryPage}    //*[@id='cart_title' and contains(text(),'Shopping-cart summary')]
${proceedToPayment}    //*[@id='cart_title' and contains(text(),'Shopping-cart summary')]
${proceedToCheckout}    //*[@class="button btn btn-default standard-checkout button-medium"]
${proceedAdresse}      //*[@class="button btn btn-default button-medium"]
${acceptGt&c}    //*[@id="cgv"]
${proceedShipping}    //*[@class="button btn btn-default standard-checkout button-medium"]
${confirmMyOrder}    //*[@class="button btn btn-default button-medium"]

# Payment Methods options
${buttonPaymentByBankWire}     //*[@class="bankwire"]
${buttonPaymentBycheck}    //*[@class="cheque"]

