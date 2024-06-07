*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ListUtils.robot
Variables  locators.py
Variables  product_menu_items.py

*** Variables ***
${PRODUCT_NAME_ON_SEARCH_PAGE}  //h1[@class = 'list-name is-title' and contains(text(), '{item_name}')]

*** Keywords ***
Concat Categories Names Till Concrete Subcategory
    [Arguments]  ${product_name}  ${category_name}  ${sub_category_name}
    Wait Until Element Is Visible   ${PRODUCT_NAME_ON_SEARCH_PAGE.format(item_name='${sub_category_name}')}
    ${expected_category_search_list}  Create List
    ${category_search_list_text}    Create List
    @{category_search_list}  Get WebElements  ${PRODUCT_CATEGORY_NAME_LOC}
    Get Text From WebElement's List  ${category_search_list}  ${category_search_list_text}
    Append To List   ${expected_category_search_list}  ${product_name}  ${category_name}  ${sub_category_name}
    Lists Should Be Equal   ${category_search_list_text}     ${expected_category_search_list}

Get All Search Results List
    @{search_result_list}   Get WebElements  ${SEARCH_RESULTS_LIST}

