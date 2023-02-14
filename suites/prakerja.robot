*** Settings ***
Documentation     Keyword to delete cart
Resource          ../libraries/libraries.robot
Resource          ../libraries/base.robot
Resource          ../pageObject/prakerja/prakerja.robot
Suite Setup       Open Browser Web Prakerja


*** Test Cases ***
User Successfully Open Pelatihan Prakerja
    [Documentation]     Keyword to user successfully open pelatihan prakerja
    Click Login Prakerja
    Input Text On Login Field
    Input Text On Password Field
    # Input Text On Confirm Password Field
