*** Settings ***
Library  Collections
Library  String

*** Keywords ***
Convert Product Price To Float
    [Arguments]     ${whole_price}  ${rest_price}
    ${full_price}   Catenate    ${whole_price}  .  ${rest_price}
    ${result}   Remove String Using Regexp  ${full_price}   [a-z].
    ${result_no_spaces}   Replace String Using Regexp  ${result}   ${SPACE}  ${EMPTY}
    ${arg}=   Get Variable Value   ${result_no_spaces.replace('\u202f', '')}
    ${num}  Convert To Number   ${arg}
    RETURN  ${num}