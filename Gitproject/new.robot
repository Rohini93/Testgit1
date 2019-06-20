*** Settings ***
Library    OperatingSystem   
Library    SeleniumLibrary 
Resource    ../TestData/gmailData.txt  
Test Teardown    Close All Browsers
  
*** Variables ***
${URL}           https://accounts.google.com/ServiceLogin/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=AddSession
${Browser}       chrome   

*** Test Cases ***
TC01    Test Gmail Login     @{user1}
TC02    Test Gmail Login     @{user2}

*** Keywords ***
Test Gmail Login    
    [Arguments]    @{testData}
    Create Webdriver    Chrome    executable_path=C:/Users/Rukhmini/Downloads/chromedriver_win32/chromedriver.exe
    Go To    ${URL}
    input username    @{testData}[0]
    Sleep    2
    enter password     @{testData}[1]
    Verify Login is Successful


Verify Login is Successful
    Wait Until Page Contains    mayur
    
input username
    [Arguments]    ${username}
    Input Text    id=identifierId    ${username}
    Click Element    css=.RveJvd.snByac
    
enter password
    [Arguments]    ${password}
    Input Password    name=password    ${password} 
    Click Element    css=.RveJvd.snByac
         