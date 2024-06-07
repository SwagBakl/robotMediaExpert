*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  String
Resource  StringUtils.robot
Variables  locators.py

*** Variables ***


*** Keywords ***
Get Whole Product Price
    [Arguments]     ${item_number}
    ${whole_price}  Get Text    ${SEARCH_RESULTS_LIST_PRODUCT_WHOLE_PRICE.format(index=${item_number})}
    ${rest_price}   Get Text    ${SEARCH_RESULTS_LIST_PRODUCT_REST_PRICE.format(index=${item_number})}
    ${num}=     Convert Product Price To Float  ${whole_price}  ${rest_price}
    RETURN  ${num}

Get Category Product Name
    [Arguments]  ${product_number}
    ${product_name}     Get Text    ${SEARCH_RESULT_LIST_PRODUCT_NAME.format(index=${product_number})}
    RETURN  ${product_name}

Click On ${product} Product
    [Arguments]  ${product_number}
    Press Keys  ${SEARCH_RESULT_LIST_PRODUCT_NAME.format(index=${product_number})}  RETURN