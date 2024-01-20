*** Settings ***
Resource        ../base/base.robot
Variables       fly-locators.yaml
Library    Dialogs

*** Keywords ***
Click Menu Book
    Wait Until Element Is Visible    ${menu-book}
    Click Element                    ${menu-book}

Click Form City
    [Arguments]    ${spinnerFrom}
    Wait Until Element Is Visible    ${form-city}
    Click Element                    ${spinnerFrom}

Click To City
    [Arguments]    ${spinnerTo}
    Wait Until Element Is Visible   ${to-city}
    Click Element                   ${spinnerTo}

Click Class
    [Arguments]    ${spinnerClass}
    Wait Until Element Is Visible   ${class}
    Click Element                   ${spinnerClass}

Click Start Date
    [Arguments]    ${textStartDate}
    Wait Until Element Is Visible   ${start-date}
    Click Element                   ${textStartDate}

Click End Date
    [Arguments]    ${textEndDate}
    Wait Until Element Is Visible   ${end-date}
    Click Element                   ${textEndDate}

Click Button Flight+Hotel
    [Arguments]    ${radioButtonFlightHotel}
    Wait Until Element Is Visible   ${button-flighthotel}
    Click Element                   ${radioButtonFlightHotel}







Input From City On Booking Page
    Wait Until Element Is Visible    ${form-city}
    Click Element                    ${form-city}

Select Toronto City From On Booking Page
    Wait Until Element Is Visible    ${from-city-toronto}
    Click Element                    ${from-city-toronto}

Select New York City From On Booking Page
    Wait Until Element Is Visible    ${from-city-newyork}
    Click Element                    ${from-city-newyork}

Select Chicago City From On Booking Page
    Wait Until Element Is Visible    ${from-city-chicago}
    Click Element                    ${from-city-chicago}


Input To City On Booking Page
    Wait Until Element Is Visible    ${to-city}
    Click Element                    ${to-city}

Select London City To On Booking Page
    Wait Until Element Is Visible    ${to-city-london}
    Click Element                    ${to-city-london}


Input Start Date
    Wait Until Element Is Visible    ${start-date}
    Click Element                    ${start-date}

Select Start Date Value
    Wait Until Element Is Visible    ${start-date-value}
    Click Element                    ${start-date-value}


Input End Date
    Wait Until Element Is Visible    ${end-date}
    Click Element                    ${end-date}

Select End Date Value
    Wait Until Element Is Visible    ${end-date-value}
    Click Element                    ${end-date-value}

Click OK
    Wait Until Element Is Visible    ${click-ok}
    Click Element                    ${click-ok}


Input Radio Button Flight
    Wait Until Element Is Visible    ${button-flighthotel}
    Click Element                    ${button-flighthotel}
        
Click Button Book
    Wait Until Element Is Visible    ${button-book}
    Click Element                    ${button-book}
  

