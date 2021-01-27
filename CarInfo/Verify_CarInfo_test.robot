*** Settings ***
Library    AppiumLibrary    


*** Test Cases ***

TC1_VerifyCarinfo
    Open Application    http://localhost:4753/wd/hub
    ...    platformName=android
    ...    deviceName=redmi
    ...    appPackage=com.cuvora.carinfo
    ...    appActivity=com.cuvora.carinfo.activity.HomePageActivity
    ...    noReset=True
   
    Set Appium Timeout    30s
    
    
    # Run Keyword And Ignore Error     Click Element   //*[@resource-id='com.aranoah.healthkart.plus:id/close']

    # Wait Until Element Is Visible    //*[@text='Health Products']
    # Click Element    //*[@text='Health Products']    #xpath is different

    # Close Application
    

    
    
    
    










