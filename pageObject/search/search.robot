*** Settings ***
Documentation       Keyword search page
Variables           search.yaml

*** Variables ***
${search_keyword}      Computer

*** Keywords ***
Input Text On Search Text Box
    [Documentation]       Keyword to input text on search text box
    Click Element                 ${textBox_SearchPage}
    Input Text                    ${textBox_SearchPage}     ${search_keyword}

Click Search Button
    [Documentation]        Keyword to click search button
    Click Button                  ${buttonClickSearch_SearchPage}

Click Checkbox On Features Brand
    [Documentation]         Keyword to click checkbox on features brand
    Wait Until Element Is Visible   ${checkBox_resultSearchPage}
    Click Element                 ${checkBox_resultSearchPage}

Click Random Title Card On List
    [Documentation]         Keyword to click random title card on list
    ${CARD_TITLE}                 Get Text        ${resultSearchTitleCard_resultSearchPage}
    Set Suite Variable            ${CARD_TITLE}
    Click Element                 ${resultSearchTitleCard_resultSearchPage}

Click Quantity Button
    [Documentation]         Keyword to click quantity button
    Click Element                 ${quantityButton_detailSearchPage}

Choose Quantity Number
    [Documentation]         Keyword to selected quantity number
    ${numbers}=                   Evaluate    random.randint(2,5)     random
    ${quantity_data}              Set Variable     ${numbers}
    ${quantity}=                  Evaluate    ${quantity_data} - 1
    Click Element                 ${quantityText_detailSearchPage.format("${quantity}")}
    Set Suite Variable            ${QUANTITY_DATA}    ${quantity_data}

Click Add To Cart Button
    [Documentation]         Keyword to click add to cart button
    Click Element                 ${cartButton_detailSearchPage}

Verify Search Result Appears
    [Documentation]         Keyword to verify search result page appears
    Element Should Be Visible     ${searchResultPage_searchPage.format("${search_keyword}")}

Verify Quantity Is Selected
    [Documentation]         Keyword to verify quantity is selected
    Element Text Should Be        ${numberQuantity_detailSearchPage}   ${QUANTITY_DATA}

Verify Checkbox Is Selected
    [Documentation]         Keyword to verify checkbox is selected
    Scroll Element Into View      ${checkBox_resultSearchPage}
    Checkbox Should Be Selected   ${checkBoxSelected_resultSearchPage}
