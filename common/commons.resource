*** Settings ***
Library    SeleniumLibrary
Resource    ../testdata/commons_TestData.resource


*** Keywords ***
open chrome browser 
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
close chrome browser
    Close Browser