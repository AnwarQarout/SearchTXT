*** Settings ***
Test Setup        Custom Setup
Test Teardown     Custom Teardown
Library           OperatingSystem

*** Variables ***
${searchFor}      anwar
${fileName}       temptxt.txt

*** Test Cases ***
Test Case 1
    Log    ${content}

Test Case 2
    Verify file not empty and contains the keyword

Test Case 3
    Get File Size    ${fileName}

Test Case 5
    Open file and read count and verify that it is four

*** Keywords ***
Open file and read count and verify that it is four
    Get Count    ${content}    ${searchFor}
    Should Contain X Times    ${content}    anwar    4

Custom Setup
    ${content}    Get File    ${fileName}
    Set test variable    ${content}

Custom Teardown
    Log    test tear down

Verify file not empty and contains the keyword
    Should Not Be EMPTY    ${content}
    Should Contain    ${content}    ${searchFor}
