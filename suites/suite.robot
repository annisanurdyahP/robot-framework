*** Settings ***
Documentation     Keyword to delete cart
Resource          ../libraries/libraries.robot
Resource          ../libraries/base.robot
Suite Setup       Open Browser Web

*** Test Cases ***
User Should Be Able To Delete Cart
    [Documentation]     Keyword to user should be able to delete cart
    User Search On Search Field
    User Choose Brand Based On Features Brand
    User Open Items Detail
    User Choose Quantity Items
    User Added Items To Cart
    User Go To Cart Page
    User Deleted Item On Cart Page
