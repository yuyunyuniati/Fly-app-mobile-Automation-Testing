*** Settings ***
Resource        ../pageObjects/homePageObject/homePage.robot
Resource        ../pageObjects/loginPageObject/loginPage.robot
Resource        ../pageObjects/searchPageObject/searchPage.robot

*** Variables ***
${VALID_USERNAME}        support@ngendigital.com
${VALID_PASSWORD}        abc123
${VALID_SEARCH}          DA935
${INVALID_SEARCH}        invalid

*** Test Cases ***

Search Valid Credential
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page For Search Page     ${VALID_USERNAME} 
    Input Password On Login Page For Search Page     ${VALID_PASSWORD}
    Click Sign In Button On Login Page For Search Page
    Click Menu Search
    Input Search On Search Page    ${VALID_SEARCH}
    Click Button Search On Search Page 
    Close Flight Application

Search InValid Credential 
    Open Flight Application
    Click Sign In Button On Home Page 
    Input Username On Login Page For Search Page      ${VALID_USERNAME} 
    Input Password On Login Page For Search Page      ${VALID_PASSWORD} 
    Click Sign In Button On Login Page For Search Page
    Click Menu Search
    Input Search On Search Page    ${INVALID_SEARCH}
    Click Button Search On Search Page 
    Close Flight Application