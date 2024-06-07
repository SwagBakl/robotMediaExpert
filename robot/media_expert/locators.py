COOKIE_ACCEPT_LOC = "//button[@id = 'onetrust-accept-btn-handler']"
COOKIE_BANNER_LOC = "//div[@id = 'onetrust-banner-sdk']"
PRODUCT_CATEGORIES_LOC = "//div[@id = 'section_menu-list']//ul[@class = 'items']/li"
PRODUCT_CATEGORIES_TEXT_LOC = "//div[@id = 'section_menu-list']//ul[@class = 'items']/li//span[contains(text(), '{item_name}')]"
PRODUCT_CATEGORIES_TEXT_LOC = "//div[@id = 'section_menu-list']//ul[contains(@class, 'items')]/li//span[contains(text(), '{item_name}')]"
MAIN_PAGE_LOC = "//div[@class= 'home-carousel']"

PRODUCT_CATEGORY_SUBCATEGORIES_TEXT = "//span[@class = 'header is-regular' and text()='{item_name}']"
PRODUCT_SUBCATEGORY_ITEM = "//a[contains(text(), 'Drony i akcesoria')]/ancestor::div[@class = 'group']/div[@class = 'group-links']/a[contains(text(), '{item_name}')]"

PRODUCT_CATEGORY_NAME_LOC = "//ul[@class = 'wrapper']/li//span[@class = 'text']"

# PRODUCT_NAME_ON_SEARCH_PAGE = "//h1[@class = 'list-name is-title' and contains(text(), '{item_name}')]"

SEARCH_RESULTS_LIST = "//div[@class = 'offers-list']/span[{index}]"
SEARCH_RESULT_LIST_PRODUCT_NAME = SEARCH_RESULTS_LIST + "//h2/a[@target='_self']"
SEARCH_RESULT_LIST_PRODUCT_CODE = SEARCH_RESULTS_LIST + "//div[@class = 'flex-row']/span[contains(@class, 'is-regular')]"
WHOLE_PRICE_LOC = "//span[@class = 'whole']"
REST_PRICE_LOC = "//span[@class = 'rest']"
SEARCH_RESULTS_LIST_PRODUCT_WHOLE_PRICE = SEARCH_RESULTS_LIST + WHOLE_PRICE_LOC
SEARCH_RESULTS_LIST_PRODUCT_REST_PRICE = SEARCH_RESULTS_LIST + REST_PRICE_LOC
SEARCH_RESULTS_LIST_PRODUCT_UNAVAILABLE = SEARCH_RESULTS_LIST + "//div[contains(@class, 'offer-unavailable')]"

# PRODUCT PAGE LOCATORS
PRODUCT_NAME_LOC = "//h1[contains(@class, 'name')]"
PRODUCT_PRICE_LOC = "//div[@id = 'section_page-summary-box']//div[@class = 'price-box']"
PRODUCT_WHOLE_PRICE_LOC = PRODUCT_PRICE_LOC + WHOLE_PRICE_LOC
PRODUCT_REST_PRICE_LOC = PRODUCT_PRICE_LOC + REST_PRICE_LOC
