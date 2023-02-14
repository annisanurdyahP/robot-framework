** Settings ***
Library    SeleniumLibrary

*** Variable ***
${BASE_URL}                  https://www.amazon.com/
${BASE_URL_PRAKERJA}         https://www.prakerja.go.id/
${BROWSER_NAME}     chrome

*** Keywords ***
Open Browser Web
    [Documentation]    Open Browser and go to base url
    Open Browser       ${BASE_URL}        ${BROWSER_NAME}
    Maximize Browser Window

Open Browser Web Prakerja
    [Documentation]    Open Browser and go to base url
    Open Browser       ${BASE_URL_PRAKERJA}        ${BROWSER_NAME}
    Maximize Browser Window