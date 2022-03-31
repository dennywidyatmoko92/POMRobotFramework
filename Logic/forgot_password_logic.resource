*** Settings ***
Library    SeleniumLibrary
Resource    ../element/forgot_pass_element.resource
Resource    ../common/commons.resource

*** Keywords ***
input field username forgot password
    [Arguments]    ${username_forgot_password}
    Wait Until Element Is Visible    ${txt_field_forgot}    ${timeout}
    Input Text    ${txt_field_forgot}    $${username_forgot_password}    
    
click button reset password
    Click Element    ${btn_reset_password}
    
click button cancel
    Click Element    ${cancel_forgot_pass}      
    
text contact HR appear
    [Arguments]    ${txt_contactHR}
    Wait Until Page Contains    ${txt_contactHR}    ${timeout}      

