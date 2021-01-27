*** Settings ***
Library    AppiumLibrary    


*** Test Cases ***

TC1_VerifyCarinfo
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
    
    
    FOR    ${i}    IN RANGE    0    999
        ${output}    Run Keyword And Ignore Error    Click Element    //*[contains(@text,"Range Rover Evoque")]        
        Swipe By Percent    50    75    50    25    1000    
        Exit For Loop If    '${output}[0]'=='PASS'
    END  
    

    
    
    # Run Keyword And Ignore Error     Click Element   //*[@resource-id='com.aranoah.healthkart.plus:id/close']

    # Wait Until Element Is Visible    //*[@text='Health Products']
    # Click Element    //*[@text='Health Products']    #xpath is different

    # Close Application
    

    
    
    
    










