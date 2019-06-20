*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***

SignupTestcase
    [Documentation]    this is signup test
    ...    
    [Tags]    acceptance
    Create Webdriver    Chrome    executable_path=C:/Users/Rukhmini/Downloads/chromedriver_win32/chromedriver.exe
    Go To    https://accounts.google.com/signup/v2/webcreateaccount?flowName=GlifWebSignIn&flowEntry=SignUp
    Set Browser Implicit Wait    5
    Input Text       id=firstName        radha
    Input Text       id=lastName         patil
    Input Text       id=username         radhapatil9346
    Input Password   name=Passwd           r@dha10129
    Input Password   name=ConfirmPasswd   r@dha10129      
    Click Element    xpath=//*[@id="accountDetailsNext"]/span/span    
    Sleep    2    
    Input Text    id=phoneNumberId    9075024641
    Click Element    xpath=//*[@id="gradsIdvPhoneNext"]/span/span    
    Sleep    2    
    Input Text    name=code    262370
    Click Element    xpath=//*[@id="gradsIdvVerifyNext"]/span/span  
    Input Text    xpath=//*[@id="day"]    4
    Click Element    xpath=//*[@id="month"]    
    Click Element    link=June  
    Input Text    xpath=//*[@id="year"]    1993
    Click Element    xpath=//*[@id="gender"]    
    
         