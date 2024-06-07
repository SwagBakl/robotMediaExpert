*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}          https://www.mediaexpert.pl

*** Keywords ***
Setup
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window

TearDown
    Log To Console  TEARDOWN...
    Close Browser