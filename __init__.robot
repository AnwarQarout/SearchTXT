*** Settings ***
Suite Setup        Custom Setup
Suite Teardown     Custom Teardown
Library           OperatingSystem

*** Keywords ***
Custom Setup
    Log    setting up

Custom Teardown
    Log    tearing down
