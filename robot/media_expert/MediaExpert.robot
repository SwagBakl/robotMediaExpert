*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  SearchPageResults.robot
Resource  BaseTest.robot
Resource  SearchResultItemForm.robot
Resource  ProductPage.robot
Variables  locators.py
Variables  product_menu_items.py

Test Setup     Setup
Test Teardown  TearDown

*** Variables ***
${index}   1
${category}    ${FOTO_CAMERAS}
${sub_category}    ${DRONY_I_AKCESORIA}
${sub_category_product}    ${MINI_DRONY}

*** Test Cases ***
Media Expert Fatality
    [Tags]
    ...  allure.label.owner:Denis Ambrazevich
    ...  allure.label.severity:critical
    ...  allure.label.story:Authentication
    Wait Until Element Is Visible   ${COOKIE_BANNER_LOC}
    Press Keys  ${COOKIE_ACCEPT_LOC}    RETURN
    Page Should Contain Element     ${MAIN_PAGE_LOC}
    @{PRODUCT_ITEMS}  Get WebElements   ${PRODUCT_CATEGORIES_LOC}
    Click Concrete Product Category Item     ${category}
    Verify Concrete Product Category Opened  ${category}
    Click Product Subcategory Item  ${sub_category_product}
#    Concat Categories Names Till Concrete Subcategory   ${category}  ${sub_category}  ${sub_category_product}
#    Scroll Element Into View    ${SEARCH_RESULTS_LIST_PRODUCT_WHOLE_PRICE.format(index=${index})}
#    ${search_list_product_price}   Get Whole Product Price     ${index}
#    ${search_list_product_name}    Get Category Product Name    ${index}
#    Click On ${sub_category_product} Product  ${index}
#    ${product_name}    Get Product Name
#    ${product_price}   Get Product Price
#    Should Be Equal  ${search_list_product_name}    ${product_name}
#    Should Be Equal  ${search_list_product_price}    ${product_price}


*** Keywords ***
Click Concrete Product Category Item
    [Arguments]     ${item_name}
    Mouse Over      ${PRODUCT_CATEGORIES_TEXT_LOC.format(item_name='${item_name}')}

Verify Concrete Product Category Opened
    [Arguments]     ${subcategory_name}
    Wait Until Element Is Visible      ${PRODUCT_CATEGORY_SUBCATEGORIES_TEXT.format(item_name='${subcategory_name}')}

Click Product Subcategory Item
    [Arguments]  ${subcategory_item}
    Press Keys   ${PRODUCT_SUBCATEGORY_ITEM.format(item_name='${subcategory_item}')}    [Return]
