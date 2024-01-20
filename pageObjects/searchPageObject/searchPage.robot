*** Settings ***
Resource        ../base/base.robot
Variables       search-locators.yaml

*** Keywords ***
Input Username On Login Page For Search Page
    [Arguments]   ${username}
    Wait Until Element Is Visible      ${username-input}
    Input Text                         ${username-input}    ${username}

Input Password On Login Page For Search Page
    [Arguments]   ${password}
    Wait Until Element Is Visible    ${password-input}
    Input Text                       ${password-input}    ${password}


Click Sign In Button On Login Page For Search Page
    Click Element    ${sign-in-button}
    #Wait Until Page Contains Element  //*[@text="NGen Digital"]

Click Menu Search
    Wait Until Element Is Visible    ${menu-search}
    Click Element                    ${menu-search}

Input Search On Search Page
    [Arguments]    ${flight_number}
    Wait Until Element Is Visible    ${search-input}
    Input Text                       ${search-input}    ${flight_number}

Click Button Search On Search Page
    Click Element    ${search-button}