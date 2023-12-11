*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    http://sampleapp.tricentis.com/101/app.php
${BROWSER}    chrome
*** Keywords ***
User is in Registration form Page
    Open BROWSER    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    60
    Maximize Browser Window
    Registration Form should be ready
Registration Form should be ready
    Element Should Contain    app_sub_title    Vehicle Insurance Application
    Element Should Contain    entervehicledata    Enter Vehicle Data
User select make
    Select From List By Label    make    Audi
User select Models
    Select From List By Label    model    Scooter
User fill the field cylinder capacity with value
    input text     css=#cylindercapacity     100
User fill the field engine with value
    input text     css=#engineperformance     100
User click in button Calendar
    Click Button    css=#opendateofmanufacturecalender
    Mouse Over    css=#insurance-form > div > section:nth-child(1) > div:nth-child(8) > label
    Wait Until Element Is Visible    css=#ui-datepicker-div
    Click Element    css=#ui-datepicker-div > table > tbody > tr:nth-child(2) > td:nth-child(5) > a
User select Number of Seats
    Select From List By Label    numberofseats    1  
User select Number of Seats motor
    Select From List By Label    numberofseatsmotorcycle    1    
User select Fuel Type
    Select From List By Label    fuel    Petrol
User fill the field payload with value
    input text     css=#payload     1000
User fill the field total with value
    input text     css=#totalweight     1000
User fill the field list price with value
    input text     css=#listprice     20000
User fill the field license plate number with value
    input text     css=#licenseplatenumber     20000
User fill the field annual mileage with value
    input text     css=#annualmileage     10000
User click in Next
    Mouse Over    id=nextenterinsurantdata
    Click Button    css=#nextenterinsurantdata
User to see the page Enter Insurante Date
    Element Should Contain    enterinsurantdata    Enter Insurant Data
User fill field first name
    input text     css=#firstname     Anderson
User fill field last name
    input text     css=#lastname     Oliveira
User click in button Calendar Date of Birth
    Click Button    css=#opendateofbirthcalender
    Mouse Over    css=#insurance-form > div > section:nth-child(2) > div:nth-child(8) > label
    Wait Until Element Is Visible    css=#insurance-form > div > section:nth-child(2) > div:nth-child(6) > label
    Repeat Keyword    506 times    Click Element    css=#ui-datepicker-div > div > a.ui-datepicker-prev.ui-corner-all
    Click Element    css=#ui-datepicker-div > table > tbody > tr:nth-child(4) > td:nth-child(2) > a
User select Gender
    Click Element    xpath=/html/body/div[1]/div/div[1]/div/div/form/div/section[2]/div[4]/p/label[1]/span
User fill field street adress
    input text     css=#streetaddress     Rua do Rócio
User select country
    Select From List By Label    country    Brazil
User fill field zip code
    input text     css=#zipcode     11010310
User fill field city
    input text     css=#city     São Paulo
User select occupation
    Select From List By Label    occupation    Farmer
User select hobbies
    Click Element    xpath=/html/body/div[1]/div/div[1]/div/div/form/div/section[2]/div[10]/p/label[1]/span
User fill field website
    input text     css=#website     www.google.com.br
User click next
    Click Button   css=#nextenterproductdata
User to see the page Enter Product Data
    Element Should Contain    enterproductdata    Enter Product Data
User select start date
    input text     css=#startdate     01/20/2024
User select insurance Selenium   
     Select From List By Label    insurancesum     3.000.000,00
User select merit rating   
     Select From List By Label    meritrating     Bonus 1
User select damage insurance   
     Select From List By Label    damageinsurance     No Coverage
User select Optional products
    Click Element     xpath=/html/body/div[1]/div/div[1]/div/div/form/div/section[3]/div[5]/p/label[1]/span
User select courtesy car
    Select From List By Label    courtesycar    No
User click next button    
    Click Button    css=#nextselectpriceoption
User to see page select price
    Element Should Contain    selectpriceoption    Select Price Option
User select Option
    Click Element     xpath=/html/body/div[1]/div/div[1]/div/div/form/div/section[4]/section/div[1]/table/tfoot/tr/th[2]/label[1]/span
User click in the button next
    Click Button    css=#nextsendquote
User to see page send quote
    Element Should Contain    sendquote    Send Quote
User fill field email
    input text     css=#email     teste@gmail.com
User fill field phone
    input text     css=#phone     11981456787
User fill field username
    input text     css=#username     andprovaccee
User fill field password
    input text     css=#password     Ao$1987
User fill field confirm password
    input text     css=#confirmpassword     Ao$1987
User fill field comments
    input text     css=#Comments     avaliacaoteste
User click in the button send email
    Click Button    css=#sendemail
User validate success message
    Wait Until Element Is Visible    css=body > div.sweet-alert.showSweetAlert.visible
    Element Should Contain    css=body > div.sweet-alert.showSweetAlert.visible > h2    Sending e-mail success!
    Click Button    css=body > div.sweet-alert.showSweetAlert.visible > div.sa-button-container > div > button