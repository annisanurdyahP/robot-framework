** Settings ***
Resource              ../pageObject/cart/cart.robot
Resource              ../pageObject/search/search.robot

*** Keywords ***
User Search On Search Field
    [Documentation]       Keyword to user has searched on search field
    Input Text On Search Text Box
    Click Search Button
    Verify Search Result Appears

User Choose Brand Based On Features Brand
    [Documentation]     Keyword to user checked based on feature brand
    Click Checkbox On Features Brand
    Verify Checkbox Is Selected

User Open Items Detail
    [Documentation]     Keyword to user has opened items detail
    Click Random Title Card On List
    Verify Successfully Open Item Detail Card

User Choose Quantity Items
    [Documentation]
    Click Quantity Button
    Choose Quantity Number
    Verify Quantity Is Selected

User Added Items To Cart
    [Documentation]       Keyword to user added items to cart
    Click Add To Cart Button
    Verify Cart Successfully Added

User Go To Cart Page
    [Documentation]       Keyword user go to cart page
    Click Go To Cart Button
    Verify Cart Page Appears

User Deleted Item On Cart Page
    [Documentation]        Keyword to user successfullt delete item on cart page
    Click Delete Item On Shopping Cart
    Verify Items Successfully Deleted