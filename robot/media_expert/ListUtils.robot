*** Settings ***


*** Keywords ***
Get Text From WebElement's List
    [Arguments]  ${list}  ${result_list}
    FOR  ${list_element}  IN  @{list}
        ${category_text}    Get Text    ${list_element}
        Append To List  ${result_list}  ${category_text}
    END