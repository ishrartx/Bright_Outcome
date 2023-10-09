@Web
Feature: testing the admin account module

  @Activate_Admin
    Scenario Outline: Activating admin account
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
    And clicks " Edit/Activate " button
    And click on the " Activate " button
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  | SheetName     | username | password | username1               | password1               |  |
      | Testdata1 | Admin_Account | Username | Password | Customer_Admin_username | Customer_Admin_password |  |
      | Testdata2 | Admin_Account | Username | Password | Project_Admin_username  | Project_Admin_password  |  |
      | Testdata3 | Admin_Account | Username | Password | Project_Admin_username  | Project_Admin_password  |  |
      | Testdata5 |	Admin_Account |	Username | Password |	Project_Admin_username  | Project_Admin_password  | |
      | Testdata7 | Admin_Account | Username | Password | Project_Admin_username | Project_Admin_password |  |
      | Testdata8 | Admin_Account | Username | Password | Project_Admin_username | Project_Admin_password |  |     
      | Testdata11 | Admin_Account | Username | Password | | | |
      


  @AC_user01 @user
  Scenario Outline: Verify that an active Customer  admin account can be deactivated successfully by another customer admin account.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
    And clicks " Edit/Deactivate " button
    And click on the " Deactivate " button
    And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    Then user get teh error message
    Examples:
      | TestData  | SheetName     | username | password | username1               | password1               |  |
      | Testdata1 | Admin_Account | Username | Password | Customer_Admin_username | Customer_Admin_password |  |


  @AC_user02 @user
  Scenario Outline: Verify that an active Customer admin account can be deactivated successfully by Project admin account.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
    And clicks " Edit/Deactivate " button
    And click on the " Deactivate " button
    And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    Then user is not able to see the error message
    Examples:
      | TestData  | SheetName     | username | password | username1              | password1               |  |
      | Testdata2 | Admin_Account | Username | Password | Project_Admin_username | Project_Admin_password |  |

  @AC_user03 @user
  Scenario Outline: Verify that an active project admin account can be deactivated successfully by another project admin account.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And Search the Project name
    And Select the "View professionals" option
    And clicks " Edit/Deactivate " button
    And click on the " Deactivate " button
    And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    Then user get teh error message
    Examples:
      | TestData  | SheetName     | username | password | username1              | password1              |  |
      | Testdata3 | Admin_Account | Username | Password | Project_Admin_username | Project_Admin_password |  |

  @AC_user04 @user
  Scenario Outline: Verify any deactivated account can not sign in again.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    Then user is not able to see the expected message
    Examples:
      | TestData  | SheetName     | username | password | username1              | password1              |  |
      | Testdata4 | Admin_Account | Username | Password | Project_Admin_username | Project_Admin_password |  |
      
     @ACSuser_05
  Scenario Outline:: Verify after deactivation no project should be assign to that account.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
    And click the Manage Professional option
		And Select A "Add existing professional" option
		And select an existing professional "<existing_professional>"
    And clicks " Edit/Deactivate " button
    And click on the " Deactivate " button
		Then user should see the updated status succesful
		And hover on the admin name
		And click on the " Projects " option
    And Enter the  new project Name "<Cols:Rows>" in "<SheetName>"
    When click on the " Add project " button
    Then user is able to see the comfirmation alert message
    And hover on the admin name
		And click on the " Projects " option
    And search the newly added project
    And Select the "View professionals" option of newly added project
    And click the Manage Professional option
		And Select A "Add existing professional" option
		And check if the user professional exists
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |	SheetName	|	username | password |	Cols:Rows	|	existing_professional	|
      | Testdata5 |	Admin_Account |	Username | Password |	5:Testdata5	|	Existing_Professional_Name	|
      
  @ACSuser_06
  Scenario Outline:: Verify that account gets sign off automatically from all logged in devices, if account becomes deactivated.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
    And check if " Edit/Activate " button exists
    And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    Then user sees error message of invalid login
    
    Examples:
      | TestData  |	SheetName	|	username | password | username1	|	password1	|
      | Testdata6 |	Admin_Account |	Username | Password |	Professional_username	|	Professional_password	|
      
  @AC_user07 @user
  Scenario Outline: Verify that the status should change from "Edit/Deactivate" to "Edit/Activate" after deactivation
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
    And clicks " Edit/Deactivate " button
    And click on the " Deactivate " button
    Then verify the status of " Edit/Activate " button
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData  | SheetName     | username | password | username1              | password1              |  |
      | Testdata7 | Admin_Account | Username | Password | Project_Admin_username | Project_Admin_password |  |


  @AC_user08 @user
  Scenario Outline: Verify that an active Customer admin account can be deactivated successfully by Project admin account.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
    And clicks " Edit/Deactivate " button
    And click on the " Deactivate " button
    And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    Then user is able to login successfully and see the user name
    Examples:
      | TestData  | SheetName     | username | password | username1              | password1              |  |
      | Testdata8 | Admin_Account | Username | Password | Project_Admin_username | Project_Admin_password |  |
      
     @Admin_10
     Scenario Outline: Verify that is active Customer  admin account can be deactivated successfully by another customer admin account through "Users" option.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Users " option      
    And User click on the editDeactivate button
    Then User verify "Deactivate" button is not displayed
    
    
    
    
    Examples:
      | TestData  | SheetName            | username | password |
      | Testdata10 | Admin_Account | Username | Password |
    
    
    @Admin_11
    Scenario Outline:Verify that an active Project  admin account can be deactivated successfully by Customer admin account through Users option.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Users " option
     Then User click on the editDeactivate button
    And click on the " Deactivate " button
    And hover on the admin name
    Then click on the sign out button
    
        
      Examples:
      | TestData  | SheetName            | username | password |
      | Testdata11 | Admin_Account | Username | Password |
      
      
  @Admin_12 
  Scenario Outline: Verify that About link is working on home screen.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And user clicks on "About" link
    Then "About" page is displayed
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  | SheetName            | username | password |
      | Testdata12 | Admin_Account | Username | Password |
      
  @Admin_13 
  Scenario Outline: Verify that Contact us  link is working on home screen.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And user clicks on "Contact Us" link
    Then "Contact Us" page is displayed
    And hover on the admin name
    Then click on the sign out button
    
     Examples:
      | TestData  | SheetName            | username | password |
      | Testdata12 | Admin_Account | Username | Password |
      
  @Admin_14 @WebDemo
  Scenario Outline: Verify that FAQ link is working on home screen.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And user clicks on "FAQ" link
    Then "FAQ" page is displayed
    And hover on the admin name
    Then click on the sign out button
    
    
     Examples:
      | TestData  | SheetName            | username | password |
      | Testdata12 | Admin_Account | Username | Password |
      
 @Admin_15
 Scenario Outline: Verify that Terms & Conditions link is working on home screen.       
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And user clicks on "Terms & conditions" link
    Then "Terms & conditions" page is displayed
    And hover on the admin name
    Then click on the sign out button
    
    
     Examples:
      | TestData  | SheetName            | username | password |
      | Testdata12 | Admin_Account | Username | Password |
      
 @Admin_16
  Scenario Outline: Verify that Privacy policy  link is working on home screen.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And user clicks on "Privacy policy" link
    Then "Privacy policy" page is displayed
    And hover on the admin name
    Then click on the sign out button   
   
    
    
     Examples:
      | TestData  | SheetName            | username | password |
      | Testdata12 | Admin_Account | Username | Password |

      
