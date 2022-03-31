*** Settings ***
Library    SeleniumLibrary
Resource    ../testdata/Dashboard_testdata.resource
Resource    ../testdata/commons_TestData.resource
Resource    ../testdata/User_testdata.resource
Resource    ../common/commons.resource
Resource    ../Logic/home_Logic.resource
Resource    ../element/dashboard_element.resource
Resource    ../testdata/Dashboard_testdata.resource
Resource    ../Logic/dashboard_logic.resource
Resource    ../testdata/home_Testdata.resource

Suite Setup    open chrome browser
Suite Teardown    close chrome browser

*** Variables ***


*** Test Cases ***
as a user i could not login with invalid credential
    input username    ${username}
    input pass    ${invalid_password}
    click button login 
    invalid credential appear    ${txt_invalid_credential}

as a user i could login with valid credential
    input username    ${username}
    input pass    ${password}
    click button login 
    wording Employee Distribution by Subunit appear    ${txt_employe}
    marketplace appear


