*** Settings ***
Documentation       Keyword prakerja page
Variables           prakerja.yaml

*** Variables ***
${title_login_form}      Masuk Akun
${email_field}           annisa.nurdyah@prakerja.go.id
${password_field}        4nnis@NP
${confirmPassword_field}        4nnis@NP


*** Keywords ***
Click Login Prakerja
    [Documentation]       Keyword to click login prakerja
    Wait Until Page Contains Element  ${loginButton_prakerjaPage}  timeout=20
    Click Link    ${loginButton_prakerjaPage}
    Wait Until Element Contains      ${titleTextLogin_prakerjaPage}    ${title_login_form}   

Input Text On Login Field
    [Documentation]     Keyword to input text on login field
    # [Arguments]          ${email_password}
    Click Element        ${emailField_prakerjaPage}
    Input Text           ${emailField_prakerjaPage}       ${email_field} 

Input Text On Password Field
    [Documentation]     Keyword to input text on password field
    # [Arguments]         ${password_field}
    Click Element       ${passwordField_prakerjaPage}
    Input Text          ${passwordField_prakerjaPage}     ${password_field}

Input Text On Confirm Password Field
    [Documentation]     Keyword to input text on confirm password field
    Click Element       ${confirmPasswordField_prakerjaPage}
    Input Text          ${confirmPasswordField_prakerjaPage}     ${confirmPassword_field}