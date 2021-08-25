*** Settings ***

*** Variables ***


*** Keywords ***

#Insert Click Interactions Here
Click MainMenu
    Click Element                                xpath://*[@id="app"]/div[5]/div[1]/nav/div/div[4]/div/button/div

Click MainMenu_Billing
    Click Element                                xpath: //*[contains(text(), "Billing")]

Click Card_Panel
    Click Element                                xpath: //*[contains(text(), "Add new card")]

#Insert Verify Pages Here

Verify Billing Page Loaded
    Set Selenium Speed                           1
    Wait Until Page Contains Element             xpath://*[@id="app"]/div[6]/div[1]/main/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[1]/h3
    Page Should Contain                          Billing information

Verify Card_Panel_Opens
    Wait Until Page Contains Element             xpath: //*[contains(text(), "CARD NAME")]
    Page Should Contain                          CARD NAME

#Input Interactions Here
Input Card Name
    [Arguments]                                  ${search_term}
    Click Element                                xpath: //*[contains(text(), "CARD NAME")]
    Input Text                                   xpath: //*[contains(text(), "CARD NAME")]     ${search_term}

Input Card Number
    [Arguments]                                 ${search_term}
    Click Element                               class:CardNumberField-input-wrapper
    Input Text                                  class:CardNumberField-input-wrapper            ${search_term}

Input MM/YY
    [Arguments]                                 ${search_term}
    Click Element                               class:CardNumberField-input-wrapper
    Input Text                                  class:CardNumberField-input-wrapper            ${search_term}

#Refactorisation
Navigate to Billing Page && Verify Page Loaded
    Click MainMenu
    Click MainMenu_Billing
    Verify Billing Page Loaded

Open Card Panel && Verify Panel Loaded
    Click Card_Panel
    Verify Card_Panel_Opens

