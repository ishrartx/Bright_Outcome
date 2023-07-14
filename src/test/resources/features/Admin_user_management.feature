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
		And select an existing professional
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
      | TestData  |	SheetName	|	username | password |	Cols:Rows	|	
      | Testdata5 |	Admin-UserManagement |	Username | Password |	4:Testdata5	|
      
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
      | Testdata6 |	Admin-UserManagement |	Username | Password |	Professional_username	|	Professional_password	|
      
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
    Then user is able to login successfully
    Examples:
      | TestData  | SheetName     | username | password | username1              | password1              |  |
      | Testdata8 | Admin_Account | Username | Password | Project_Admin_username | Project_Admin_password |  |
