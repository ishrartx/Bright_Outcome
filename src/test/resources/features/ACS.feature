@Web
Feature: login into the application


  @ACS_01 @ACS
  Scenario Outline:: Test to check if user is able to add template.
    Given Read the testdata "<TestData>" from excel file
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
      | TestData  |
      | Testdata1 |

  @ACS_02 @ACS
  Scenario Outline:: Test to check if user is able to view the edit template screen for existing template.
    Given Read the testdata "<TestData>" from excel file
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
      | TestData  |
      | Testdata1 |

  @ACS_03
  Scenario Outline:: Test to check if user is able to make the changes in edit template screen.
    Given Read the testdata "<TestData>" from excel file
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
      | TestData  |
      | Testdata1 |

  @ACS_05
  Scenario Outline:: Test to check if user is able to add a template in a project, without making any change in template. (6 buttons +no check box selected)
    Given Read the testdata "<TestData>" from excel file
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
      | TestData  |
      | Testdata1 |

  @ACS_06
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting first check box and no change in radio button. (6 buttons + 1st check box selected)
    Given Read the testdata "<TestData>" from excel file
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
      | TestData  |
      | Testdata2 |


  @ACS_07
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only second check box and no change in radio button.  (6 buttons + 2nd check box selected)
    Given Read the testdata "<TestData>" from excel file
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
    And click on the "Sign Out" option
    Examples:
      | TestData  |
      | Testdata3 |

  @ACS_08
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only third check box and no change in radio button.  (6 buttons + 3rd check box selected)
    Given Read the testdata "<TestData>" from excel file
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
    And click on the "Sign Out" option
    Examples:
      | TestData  |
      | Testdata4 |

  @ACS_09
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only fourth check box and no change in radio button.  (6 buttons + 4th check box selected)
    Given Read the testdata "<TestData>" from excel file
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
    And click on the "Sign Out" option
    Examples:
      | TestData  |
      | Testdata5 |

  @ACS_10
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting all check boxes and no change in radio button.
    Given Read the testdata "<TestData>" from excel file
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
    And click on the "Sign Out" option


    Examples:
      | TestData  |
      | Testdata6 |
      
      
      @ACS_11
      Scenario Outline: Test to check if user is able to add a template in a project , by selecting and second radio button and no check box. (5 buttons +no check box selected)
       Given Read the testdata "<TestData>" from excel file
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
      | TestData  |
      | Testdata7 |
      
      
      @ACS_12
      Scenario Outline:Test to check if user is able to add a template in a project , by selecting first check box and no change in radio button.  (5 buttons + 1st check box selected)
      Given Read the testdata "<TestData>" from excel file
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
      | TestData  |
      | Testdata8 |
      
      @ACS_13
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting first check box and no change in radio button.
    Given Read the testdata "<TestData>" from excel file
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
      | TestData  |
      | Testdata10 |
      
       @ACS_14
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting first check box and no change in radio button.
    Given Read the testdata "<TestData>" from excel file
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
      | TestData  |
      | Testdata11 |

      
      
      
      @ACS_23
      Scenario Outline:Test to check if user is able to add project.
      Given Read the testdata "<TestData>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And Enter the project Name
      When click on the " Add project " button
      Then user is able to see the comfirmation alert message
         And hover on the admin name
    Then click on the sign out button
      
      Examples:
      | TestData  |
      | Testdata9 |
      
      
       @ACS_24
      Scenario Outline:Test to check if new project is added and visible in Project list.
      Given Read the testdata "<TestData>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    Then user is able to see the created project
       And hover on the admin name
    Then click on the sign out button
      
      Examples:
      | TestData  |
      | Testdata9 |
      
      
      

      
      


  @ACS_15
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only fourth check box and no change in radio button. (5 buttons + 4th check box selected)
    Given Read the testdata "<TestData>" from excel file
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
    And click on the "Sign Out" option
    
    Examples:
      | TestData  |
      | Testdata15 |
    
  @ACS_16
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting all check boxes and no change in radio button. (5 buttons + allcheck boxes selected)
    Given Read the testdata "<TestData>" from excel file
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
    And click on the "Sign Out" option

    Examples:
      | TestData  |
      | Testdata16 |
      
  @ACS_21
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting only fourth check box and no change in radio button. (5 buttons + 4th check box selected)
    Given Read the testdata "<TestData>" from excel file
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
    And click on the "Sign Out" option
    Examples:
      | TestData  |
      | Testdata21 |
    
  @ACS_22
  Scenario Outline:: Test to check if user is able to add a template in a project , by selecting all check boxes and no change in radio button. (5 buttons + allcheck boxes selected)
    Given Read the testdata "<TestData>" from excel file
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
    And click on the "Sign Out" option
    Examples:
      | TestData  |
      | Testdata22 |
      
  @ACS_27
  Scenario Outline:: Test to check if user is able to add existing professional in the project.
    Given Read the testdata "<TestData>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
		And click the Manage Professional option
		And Select the "Add existing professional" option from the dropdown
		And select an existing professional
		And select existing professional as admin
		And hover on the admin name
    And click on the "Sign Out" option
    Examples:
      | TestData  |
      | Testdata27 |
  
  
  @ACS_28
  Scenario Outline:: Test to check if user is able to add existing professional in the project.
    Given Read the testdata "<TestData>" from excel file
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
    And click on the "Sign Out" option
    Examples:
      | TestData  |
      | Testdata28 |


  @teardown
  Scenario Outline: templateteardown
    Given Read the testdata "<TestData>" from excel file
    Then delete the template

    Examples:
      | TestData  |
      | Testdata6 |



