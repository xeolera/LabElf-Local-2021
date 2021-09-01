*** Settings ***
Documentation                      Testsuite Payment Plans
Resource                           ../Resources/keywords_general.robot
Resource                           ../Resources/keywords_billing.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Test Cases ***

Automate Invoice Functions
        [Documentation]                 TBA
        [Tags]                          TBA
        Go to Web Page
        Navigate to Billing Page && Verify Page Loaded
        Verify Upcomming Invoice Box