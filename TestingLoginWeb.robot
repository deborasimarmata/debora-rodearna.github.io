*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LoginPage}      https://demo.opencart.com/admin/index.php?route=common/login    # Chrome
${Browser}        chrome

*** Test Cases ***
Login with valid credentials should Pass
    Open Browser    ${LoginPage}    ${Browser}
    Input Text    id=input-username    userdemo
    Sleep 2s
    Input Text    id=input-password    makansateenakkali
    Sleep 2s
    Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/form/div[3]/button
