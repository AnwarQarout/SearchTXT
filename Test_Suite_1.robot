*** Settings ***
Library           OperatingSystem

*** Variables ***
${searchFor}      anwar
${fileName}       temptxt.txt

*** Test Cases ***
Test Case 1
    ${content}    Get File    ${fileName}
    Log    ${content}

Test Case 2
    ${content}    Get File    ${fileName}
    Should Not Be EMPTY    ${content}

Test Case 3
    Get File Size    ${fileName}

Test Case 4
    ${content}    get file    ${fileName}
    Should Contain    ${content}    ${searchFor}

Test Case 5
    ${content}    Get File    ${fileName}
    Get Count    ${content}    ${searchFor}
