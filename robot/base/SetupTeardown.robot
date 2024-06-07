*** Settings ***
Resource  ../Arguments.robot

*** Keywords ***
Preconditions
    Open Broser And Miximize Window     https://www.21vek.by/     chrome

PostConditions
    Close Browser