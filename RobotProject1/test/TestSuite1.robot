*** Settings ***
Library    SeleniumLibrary 

Suite Setup       Log  I am inside Test Suite Setup  
Suite Teardown    Log  I am inside Test Suite Teardown
Test Setup        Log  I am inside Test Step Setup 
Test Teardown     Log  I am inside Test Teardown

Default Tags    sanity
*** Test Cases ***

MyFirstTest
    [Tags]     smoke
    Log    Hello World....  
    
MySecondTest
    Log          Inside 2 test.... 
    Set Tags     Regression1
    Remove Tags  Regression1  
MyThirdTest
    Log    Inside 3 test.... 
# FirstSeleniumTest
    
  # Open Browser    https://google.com  chrome  
  # Set Browser Implicit Wait    5
  # Input Text    name=q    Automation Step by Step
  # Press Keys    name=q    ENTER
  # # Click Button    name=btnk    
  # Sleep     2    
  # Close Browser   
  # Log    Test Completeds    
  


# SampleLoginTest
    
    # [Documentation]    This is a sample login test.
    # Open Browser       ${URL}  Chrome
    # Set Browser Implicit Wait    5    
    # LoginKW 
    # Click Element      id=welcome    
    # Click Element      link=Logout 
    # Close Browser
    # Log                Test completed   
    # # Log                This test is executed by  %{username}  on   %{os}       
    
*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com
@{CREDENTIALS}  Admin   admin123
&{LOGINDATA}   usernamme=Admin   password=admin123



*** Keywords ***
LoginKW
    Input Text         id=txtUsername  @{CREDENTIALS}[0]
    Input Password     id=txtPassword  &{LOGINDATA}[password]
    Click Button       id=btnLogin 