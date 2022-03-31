*** Settings ***
Library    SeleniumLibrary
Resource    ../element/home_element.resource
Resource    ../testdata/commons_TestData.resource

*** Keywords ***
input username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${txt_username}    ${timeout}
    Input Text    ${txt_username}    ${username}    
    
input pass
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${txt_password}    ${timeout}
    Input Text    ${txt_password}    ${password}
    
click button login
    Click Element    ${btn_login}    
    
invalid credential appear
    [Arguments]    ${txt_invalid}
    Wait Until Page Contains    ${txt_invalid}    ${timeout} 