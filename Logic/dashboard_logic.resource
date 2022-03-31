*** Settings ***
Library    SeleniumLibrary
Resource    ../element/dashboard_element.resource
Resource    ../common/commons.resource

*** Keywords ***
marketplace appear
    Wait Until Element Is Visible    ${link marketplace}    ${timeout}
    
wording Employee Distribution by Subunit appear
    [Arguments]    ${txt_employee}
    Wait Until Page Contains    ${txt_employee}     