*** Settings ***
Resource        ../pageObjects/homePageObject/homePage.robot
Resource        ../pageObjects/loginPageObject/loginPage.robot
Resource        ../pageObjects/searchPageObject/searchPage.robot
Resource        ../pageObjects/flyPage.robot/flyPage.robot

*** Variables ***
${VALID_USERNAME}        support@ngendigital.com
${VALID_PASSWORD}        abc123
${INVALID_USERNAME}      invalid
${INVALID_PASSWORD}      invalid

${VALID_SEARCH}          DA935
${INVALID_SEARCH}        invalid
 


*** Test Cases ***

All Valid Test Case
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page       ${VALID_USERNAME} 
    Input Password On Login Page       ${VALID_PASSWORD} 
    Click Sign In Button On Login Page
    Click Menu Book
    Input From City On Booking Page   
    Select Toronto City From On Booking Page
    Input To City On Booking Page
    Select London City To On Booking Page
    Input Start Date
    Select End Date Value
    Click OK
    Input End Date
    Select End Date Value
    Click OK
    Input Radio Button Flight
    Click Button Book
    Close Flight Application
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page       ${VALID_USERNAME} 
    Input Password On Login Page       ${VALID_PASSWORD} 
    Click Sign In Button On Login Page
    Click Menu Search
    Input Search On Search Page        ${VALID_SEARCH}
    Click Button Search On Search Page 
    Close Flight Application



Login InValid Credential 
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page       ${INVALID_USERNAME} 
    Input Password On Login Page       ${INVALID_PASSWORD} 
    Click Sign In Button On Login Page
    Close Flight Application

