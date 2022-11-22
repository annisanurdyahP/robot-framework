** Settings ***
Library    SeleniumLibrary

*** Variable ***
${BASE_URL}         https://www.amazon.com/
${BROWSER_NAME}     chrome

*** Keywords ***
Open Browser Web
    [Documentation]    Open Browser and go to base url
    Open Browser       ${BASE_URL}        ${BROWSER_NAME}
    Maximize Browser Window

