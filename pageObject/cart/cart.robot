*** Settings ***
Documentation       Keyword cart page
Variables           cart.yaml

*** Keywords ***
Click Go To Cart Button
    [Documentation]         Keyword to click go to cart button
    Wait Until Page Contains Element     ${directToCartButton_cartPage}
    Click Element           ${directToCartButton_cartPage}

Click Delete Item On Shopping Cart
    [Documentation]         Keyword to click delete item on shopping cart
    Click Element           ${deleteCart_cartPage}

Verify Successfully Open Item Detail Card
    [Documentation]         Keyword to Verify Successfully Open Item Detail Card
    Wait Until Element Is Visible     ${imageDetail_cartPage}
    Element Text Should Be            ${productTitleCard_detailSearchPage}   ${CARD_TITLE}

Verify Cart Page Appears
    [Documentation]         Keyword to verify cart page
    Element Should Contain      ${titleItemOnCart_cartPage}     ${CARD_TITLE}
    Element Should Be Visible   ${totalItemsCart_cartPage.format("${QUANTITY_DATA}")}

Verify Cart Successfully Added
    [Documentation]         Keyword to verify cart successfully added
    Wait Until Page Contains Element        ${successAddedCart_cartPage}

Verify Items Successfully Deleted
    [Documentation]         Keyword to verify items successfully deleted
    Wait Until Page Contains Element        ${emptyPageCart_cartPage}
    Element Should Be Visible               ${subtotal0EmptyCart_cartPage}