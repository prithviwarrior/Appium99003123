*** Settings ***
Library    AppiumLibrary    
Library    Screenshot

*** Test Cases ***

TC1_VerifyCarinfo
    Screenshot.Set Screenshot Directory    C:/Users/CTEA/eclipse-workspace/Robot_Framework/Robot_workspace/Appium99003123/Screenshots
    # Log To Console    ${OUTPUT_DIR}    

    Open Application    http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=redmi
    ...    appPackage=com.cuvora.carinfo
    ...    appActivity=com.cuvora.carinfo.activity.HomePageActivity
    ...    noReset=True
   
    Set Appium Timeout    30s
    
    Tap    //*    273    2096
    

    FOR    ${i}    IN RANGE    0    999
        ${output}    Run Keyword And Ignore Error    Click Element    //*[contains(@text,"LAND ROVER")]        
        Swipe By Percent    50    75    50    25    1000    
        Exit For Loop If    '${output}[0]'=='PASS'
    END  
    
    # Execute Adb Shell    input touchscreen swipe     500    900    500    400
    
    FOR    ${i}    IN RANGE    0    999
        ${output}    Run Keyword And Ignore Error    Click Element    //*[contains(@text,"Range Rover Evoque")]        
        Swipe By Percent    50    75    50    50    1000    
        Exit For Loop If    '${output}[0]'=='PASS'
    END  
    
    FOR    ${i}    IN RANGE    0    999
        ${output}    Run Keyword And Ignore Error    Click Element    //*[contains(@text,"HSE Dynamic Petrol")]        
        Swipe By Percent    50    75    50    25    1000    
        Exit For Loop If    '${output}[0]'=='PASS'
    END
    
    ${elements}    Get Webelements    //*[@resource-id="com.cuvora.carinfo:id/carPropertyValueTextView"]
    Log To Console    ${elements}  
    
    FOR    ${ele}    IN    @{elements}
        ${output}    Run Keyword And Ignore Error    Element Text Should Be    ${ele}    Petrol        
        ${text}    Get Text    ${ele}
        Log To Console    ${text}    
        
        ${result}    Run Keyword If    '${output}[0]'=='PASS'    Set Variable    passed    
        Exit For Loop If    '${output}[0]'=='PASS'
    END      
    

    Should Be Equal    ${result}    passed    
    # Element Text Should Be    //*[@resource-id="com.cuvora.carinfo:id/carPropertyValueTextView"]    Petrol
    
     Go Back
     
    Sleep    5s    
    

    Close Application
    

    
    
    
    










