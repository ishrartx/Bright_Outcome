@Web
Feature: login into the application

@teardown
  Scenario Outline: templateteardown
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Then delete the template
      And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData  |SheetName|
      | Testdata1 |ACS      |



  @ACS_01 @ACS
  Scenario Outline:: Test to check if user is able to add template.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Templates " option
    And enter the template name
    When click on the " Add template " button
    Then user is able to see the alert message
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |SheetName|
      | Testdata1 |ACS|

  @ACS_02 @ACS
  Scenario Outline:: Test to check if user is able to view the edit template screen for existing template.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Templates " option
    And Search the template name
    When click on the search button
    And Select the "Edit template" in the templates option
    Then user should be navigate to Edit template screen
    And hover on the admin name
   Then click on the sign out button
    Examples:
      | TestData  |SheetName|
      | Testdata1 |ACS|

  @ACS_03
  Scenario Outline:: Test to check if user is able to make the changes in edit template screen.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
     And click on the " Templates " option
    And Search the template name
    When click on the search button
    And Select the "Edit template" in the templates option
    Then user should be navigate to Edit template screen
    Then fill details in edit template form
    And Select activity card options radio button
    And unselect checkboxes if checked in Activity card options
    Then click on " Update Details " button
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  |SheetName|
      | Testdata1 |ACS|

  @ACS_05
  Scenario Outline:: Test to check if user is able to add a template in a project, without making any change in template. (6 buttons +no check box selected)
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    And select project template setting
    Then click on "Update Project" button
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  |SheetName|
      | Testdata1 |ACS|

  @ACS_06
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting first check box and no change in radio button. (6 buttons + 1st check box selected)
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    And select project template setting
     And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  |SheetName|
      | Testdata2 |ACS|


  @ACS_07
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only second check box and no change in radio button.  (6 buttons + 2nd check box selected)
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
   And click on the " Projects " option
    And Search the Project name
    And Select the "View details" option
    And select project template setting
     And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  |SheetName|
      | Testdata3 |ACS|

  @ACS_08
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only third check box and no change in radio button.  (6 buttons + 3rd check box selected)
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
     And click on the " Projects " option
    And Search the Project name
    And Select the "View details" option
    And select project template setting
     And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  |SheetName|
      | Testdata4 |ACS|

  @ACS_09
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only fourth check box and no change in radio button.  (6 buttons + 4th check box selected)
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And Select the "View details" option
    And select project template setting
     And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  |SheetName|
      | Testdata5 |ACS|

  @ACS_10
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting all check boxes and no change in radio button.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    And select project template setting
     And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
     And hover on the admin name
    Then click on the sign out button


    Examples:
      | TestData  |SheetName|
      | Testdata6 |ACS|
      
      
      @ACS_11
      Scenario Outline: Test to check if user is able to add a template in a project , by selecting and second radio button and no check box. (5 buttons +no check box selected)
       Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
     And click on the " Templates " option
    And Search the template name
    When click on the search button
    And Select the "Edit template" in the templates option
    Then user should be navigate to Edit template screen
    Then fill details in edit template form
    And Select activity card options radio button
    And unselect checkboxes if checked in Activity card options
    Then click on " Update Details " button
     And hover on the admin name
    Then click on the sign out button
      
      Examples:
      | TestData  |SheetName|
      | Testdata7 |ACS|
      
      
      @ACS_12
      Scenario Outline:Test to check if user is able to add a template in a project , by selecting first check box and no change in radio button.  (5 buttons + 1st check box selected)
      Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    And select project template setting
      And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
     And hover on the admin name
    Then click on the sign out button


 Examples:
      | TestData  |SheetName|
      | Testdata8 |ACS|
      
      @ACS_13
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting second check box and no change in radio button.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    And select project template setting
       And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
      And hover on the admin name
    Then click on the sign out button


    Examples:
      | TestData  |SheetName|
      | Testdata10 |ACS|
      
       @ACS_14
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting third check box and no change in radio button.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
     And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    And select project template setting
       And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
      And hover on the admin name
    Then click on the sign out button


    Examples:
      | TestData  |SheetName|
      | Testdata11 |ACS|
      
      @ACS_15
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only fourth check box and no change in radio button. (5 buttons + 4th check box selected)
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
   And click on the " Projects " option
    And Search the Project name
    And Select the "View details" option
    And select project template setting
    And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
   And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |SheetName|
      | Testdata15 |ACS|
    
  @ACS_16
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting all check boxes and no change in radio button. (5 buttons + allcheck boxes selected)
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    And select project template setting
    And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
     And hover on the admin name
   Then click on the sign out button

    Examples:
      | TestData  |SheetName|
      | Testdata16 |ACS|
      
      @ACS_17
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting and first radio button and no check box.
  Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Templates " option
    And Search the template name
    When click on the search button
    And Select the "Edit template" in the templates option
    Then user should be navigate to Edit template screen
    And Select activity card options radio button
    And unselect checkboxes if checked in Activity card options
    Then click on " Update Details " button
    And hover on the admin name
    Then click on the sign out button
    
      Examples:
      | TestData  |SheetName|
      | Testdata17 |ACS|
      
      
   @ACS_18
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting first check box and no change in radio button. 
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    And select project template setting
    And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
     And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  |SheetName|
      | Testdata18 |   ACS|

@ACS_19
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only second check box and no change in radio button.  (5 buttons + 2nd check box selected).
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And Select the "View details" option
    And select project template setting
    And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |SheetName|
      | Testdata19 |ACS|
      
   @ACS_20
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only third check box and no change in radio button.  (5 buttons +3rd check box selected)
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And Select the "View details" option
    And select project template setting
       And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |SheetName|
      | Testdata20 |  ACS|  
      
      

      @ACS_21
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only fourth check box and no change in radio button. (5 buttons + 4th check box selected)
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    And select project template setting
    And Select activity card options radio button
    And select checkboxes in Activity card options
    Then click on "Update Project" button
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |SheetName|
      | Testdata21 |ACS|
    
  @ACS_22
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting all check boxes and no change in radio button. (5 buttons + allcheck boxes selected)
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    And select project template setting
    And select checkboxes in Activity card options
    Then click on "Update Project" button
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  |SheetName|
      | Testdata22 |ACS|
      
         @ACS_23
      Scenario Outline:Test to check if user is able to add project.
      Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And Enter the project Name "<Columns>" in "<SheetName>"
      When click on the " Add project " button
      Then user is able to see the comfirmation alert message
         And hover on the admin name
    Then click on the sign out button
      
      Examples:
      | TestData  |SheetName|	Columns	|
      | Testdata9 |ACS|	Testdata9,Testdata27 |
      
      
       @ACS_24
      Scenario Outline:Test to check if new project is added and visible in Project list.
      Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    Then user is able to see the created project
       And hover on the admin name
    Then click on the sign out button
      
      Examples:
      | TestData  |SheetName|
      | Testdata9 |ACS|
      
      @ACS_25
  Scenario Outline:: Test to check if user is able to view the Project Details .
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name       
    And click on the " Projects " option
      And Search the Project name
    And click on next button
    And Select the "View details" option
    Then user should be navigate to edit project screen
    And hover on the admin name
    Then click on the sign out button  
          
        
     Examples:
      | TestData  |SheetName|
      | Testdata26 |ACS|
      
  @ACS_26
  Scenario Outline:: Test to check if user is able to add any new professional in the project.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name       
    And click on the " Projects " option  
    And Search the Project name
    And Select the "View professionals" option
    And click the Manage Professional option
    And Select A "Add new professional" option
    Then User enter the Firstname and Lastname and Emailaddress
    Then Click on the submit
    Then Check the Admin box
    And hover on the admin name
    Then click on the sign out button
    
    
    
     Examples:
     
      | TestData  |SheetName|
      | Testdata26 |ACS|
      
      
    
      
      
  @ACS_27
  Scenario Outline:: Test to check if user is able to add existing professional in the project.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
		And click the Manage Professional option
		And Select A "Add existing professional" option
		And select an existing professional "<existing_professional>"
		And select existing professional as admin
		And hover on the admin name
    Then click on the sign out button
     When user clicks on the sign up
     When user enetrs professional username and password
     When user clicks on the signin button for login
     Then user is able to see the created project
     And hover on the admin name
    Then click on the sign out button
     
    
    
    Examples:
      | TestData  |SheetName|	existing_professional	|
      | Testdata27 |ACS|	Existing_Professional_Name	|	
  
  @ACS_28
  Scenario Outline:: Test to check if user is able to add existing professional in the project.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
		And select existing professional as admin
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |SheetName|
      | Testdata28 |ACS|


  

  
        