*** Settings ***
Library  SeleniumLibrary
Library  Collections
Variables  locators.py
Resource  StringUtils.robot

*** Keywords ***
Get Product Name
    ${product_name}  Get Text   ${PRODUCT_NAME_LOC}
    RETURN  ${product_name}

Get Product Price
    ${whole_price}  Get Text    ${PRODUCT_WHOLE_PRICE_LOC}
    ${rest_price}   Get Text    ${PRODUCT_REST_PRICE_LOC}
    ${full_price}=   Convert Product Price To Float  ${whole_price}  ${rest_price}
    RETURN  ${full_price}
