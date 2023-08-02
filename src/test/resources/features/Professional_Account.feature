@Web
Feature: validate the Professional Account functionality

@ACSpro_1
  Scenario Outline:: Test to check if project ,added by admin, is visible in Project list.
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
		Then verify if the professional is selected as project admin
		And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    Then verify if the project is listed    
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |	SheetName	|	username | password |	username1	|	password1	|
      | Testdata1 |	Professional_Account |	Username | Password |	Project_Admin_username	|	Project_Admin_password	|
      
  @ACSpro_2
  Scenario Outline:: Test to check if user is able to view the Project Details.
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
		Then verify if the professional is selected as project admin
		And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View details" option
    Then user should be navigate to Edit project page 
    And select project template setting
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |	SheetName	|	username | password |	username1	|	password1	|
      | Testdata2 |	Professional_Account |	Username | Password |	Project_Admin_username	|	Project_Admin_password	|
      
  @ACSpro_3
  Scenario Outline:: Test to check user is able to view the professional page.
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
		Then verify if the professional is selected as project admin
		And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
    Then " Professionals " page is displayed
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |	SheetName	|	username | password |	username1	|	password1	|
      | Testdata1 |	Professional_Account |	Username | Password |	Project_Admin_username	|	Project_Admin_password	|
      
  @ACSpro_4
  Scenario Outline:: Test to check if user is able to add existing professionals in the project.
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
		Then verify if the professional is selected as project admin
		And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And Search the Project name
    And click on next button
    And Select the "View professionals" option
    Then " Professionals " page is displayed
    And click the Manage Professional option
		And Select A "Add existing professional" option
		And select an existing professional
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |	SheetName	           |	username | password |	username1	              |	   password1	|
      | Testdata4 |	Professional_Account |	Username | Password |	Project_Admin_username	|	Project_Admin_password	|
      
      
      @ACSpro_5
    Scenario Outline: Test to check user is able to add new participant in the project by professional account.
      Given Read the testdata "<TestData>" and "<SheetName>" from excel file
      Given user navigates to the application
      When user clicks on the sign up
      When user enters the username and password
      When user clicks on the signin button for login
      And hover on the admin name
      And click on the "Participants" option
      And Select the project from the dropdown
      And click on the "Submit" button
      And click on the "Add participant " link button
      And enter the  "First name" in the field
      And enter the  "Last name" in the field
      And enter the  "Email" in the field
      And enter the  "Zip Code" in the field
      And enter the  "Incident" in the field
      And enter the  "Participant ID" in the field
      And select the date_of_Birth
      And select the gender
      And click on the " Submit " button
      Then verify that " Manage ACS " button is present
      Examples:
        | TestData  | SheetName            |
        | Testdata5 | Professional_Account |

    @ACSpro_6
    Scenario Outline: Test to check user is able to find the Participant in the project.
      Given Read the testdata "<TestData>" and "<SheetName>" from excel file
      Given user navigates to the application
      When user clicks on the sign up
      When user enters the username and password
      When user clicks on the signin button for login
      And hover on the admin name
      And click on the "Participants" option
      And Select the project from the dropdown
      And click on the "Submit" button
      And enter the first and last name
      And enter the  "Participant ID" in the field
      And click on the " Search " button
      Then verify the participant is visible
      Examples:
        | TestData  | SheetName            |
        | Testdata6 | Professional_Account |

    @ACSpro_7
    Scenario Outline: Test to check if "Export Data" option is visible in "Manage" drop down menu.
      Given Read the testdata "<TestData>" and "<SheetName>" from excel file
      Given user navigates to the application
      When user clicks on the sign up
      When user enters the username and password
      When user clicks on the signin button for login
      And hover on the admin name
      And Search the Project name
      And click on next button
      Then verify that "Export data" is present
      Examples:
        | TestData  | SheetName            |
        | Testdata7 | Professional_Account |

      @ACSpro_8
      Scenario Outline:Test to verify that "Export Data" download a zip file.
        Given Read the testdata "<TestData>" and "<SheetName>" from excel file
        Given user navigates to the application
        When user clicks on the sign up
        When user enters the username and password
        When user clicks on the signin button for login
        And hover on the admin name
        And Search the Project name
        And click on next button
        And Select the "Export data" option
        Then verify the zip file
        Examples:
          | TestData  | SheetName            |
          | Testdata7 | Professional_Account |

    @ACSpro_9
    Scenario Outline:Test to check all files(Score,button,Demographic,Promis) are available in zip file.
      Given Read the testdata "<TestData>" and "<SheetName>" from excel file
      Given user navigates to the application
      When user clicks on the sign up
      When user enters the username and password
      When user clicks on the signin button for login
      And hover on the admin name
      And Search the Project name
      And click on next button
      Then verify that "Export data" is present
      Then verify the file name present in zip folder
      Examples:
        | TestData  | SheetName            |
        | Testdata7 | Professional_Account |
        
         @ACSpro_10
  Scenario Outline: Test to check user is able to find the Participant in the project.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the "Participants" option
    And Select the project from the dropdown
    And click on the "Submit" button
    And enter the first and last name
    And click on the " Search " button
    And hover on the view button
    And click on participantsACS option
    Then Validating all the global values
    Then Validating all the Instrumental values
    Then validating all the leisure values
    Then validating all the fitness values
    Then validating all the social values
    Examples:
      | TestData  | SheetName            |
      | Testdata10 | professional_account |
        
   @ACpro_11
  Scenario Outline: Test to check if user can add participants by admin account.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And Select the project from the dropdown
    And click on the "Submit" button
    And click on the "Add participant " link button
    And enter the  "First name" in the field
    And enter the  "Last name" in the field
    And enter the  "Email" in the field
    And enter the  "Zip Code" in the field
    And enter the  "Incident" in the field
    And enter the  "Participant ID" in the field
    And select the date_of_Birth
    And select the gender
    And click on the " Submit " button
    Then user is able to see the alert message
    And hover on the admin name
    Then click on the sign out button
    
    @ACpro_12
  Scenario Outline: Test to check if user can add participants by admin account.
     Given Read the testdata "<TestData>" and "<SheetName>" from excel file
     Given user navigates to the application
     When user clicks on the sign up
     When user enters the "<username>" and "<password>"
     When user clicks on the signin button for login
     And hover on the admin name
    Then click on the sign out button
		Examples:
      | TestData  | SheetName     | username | password |
      | Testdata12 | Professional_Account | Username | Password |
      

  	@ACpro_13
  Scenario Outline: Test to check if user can add participants by admin account.
   	Given Read the testdata "<TestData>" and "<SheetName>" from excel file
  	Given user navigates to the application
  	When user clicks on the sign up
  	When user enters the "<username>" and "<password>"
  	When user clicks on the signin button for login
   	And Select the project from the dropdown
  	And click on the "Submit" button
   	And click on the "Add participant " link button 
    And enter the  "First name" in the field
   	And enter the  "Last name" in the field
 		And enter the  "Email" in the field
    And enter the  "Zip Code" in the field
    And enter the  "Incident" in the field
    And enter the  "Participant ID" in the field
    And select the date_of_Birth
    And select the gender
    And click on the " Submit " button
    Then user is able to see the alert message
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata13 | Professional_Account | Username | Password |
      
    @ACSpro_14
	Scenario Outline:: Test to check if project status changed to 'Soft locked' after adding participant to project.
		Given Read the testdata "<TestData>" and "<SheetName>" from excel file
		Given user navigates to the application
		When user clicks on the sign up
		When user enters the "<username>" and "<password>"
		When user clicks on the signin button for login
		And hover on the admin name
		And click on the " Projects " option
		And Search the Project name
		And verify the project status "Unlocked"
		And hover on the admin name
		And click on the "Participants" option
		And Select the project from the dropdown
		And click on the "Submit" button
		And click on the "Add participant " link button
		And enter the  "First name" in the field
		And enter the  "Last name" in the field
		And enter the  "Email" in the field
		And enter the  "Zip Code" in the field
		And enter the  "Incident" in the field
		And enter the  "Participant ID" in the field
		And select the date_of_Birth
		And select the gender
		And click on the " Submit " button
		And hover on the admin name
		And click on the " Projects " option
		And Search the Project name
		And verify the project status "Soft-locked"
		And hover on the admin name
		Then click on the sign out button
		When user clicks on the sign up
		Examples:
			| TestData | SheetName | username | password |
			| Testdata14 | Professional_Account | Username | Password |
 
		@ACSpro_15
	Scenario Outline:: Verify the details of participants, who has started ACS but not completed it.
		Given Read the testdata "<TestData>" and "<SheetName>" from excel file
		Given user navigates to the application
		When user clicks on the sign up
		When user enters the "<username>" and "<password>"
		When user clicks on the signin button for login
		And hover on the admin name
		And click on the "Participants" option
		And Select the project from the dropdown
		And click on the "Submit" button
		And enter the first and last name
		And click on the " Search " button
		Then check the participant acs status
		And hover on the admin name
		Then click on the sign out button
		When user clicks on the sign up
		Examples:
			| TestData | SheetName | username | password |
			| Testdata15 | Professional_Account | Username | Password |

    @ACSpro_16
  Scenario Outline:: Verify the participants details, after completing the ACS and generating score.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the "Participants" option
    And Select the project from the dropdown
    And click on the "Submit" button
    And enter the first and last name
    And click on the " Search " button
    Then verify the pending Acs score is blank
    Examples:
      | TestData   | SheetName            |
      | Testdata16 | professional_account |

  @ACSpro_17
  Scenario Outline:Verify that project status remains 'hard locked' when ACS is pending for any participant.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And Search the Project name
    Then verify the project status
    Examples:
      | TestData   | SheetName            |
      | Testdata17 | professional_account |

      @ACSpro_18
  Scenario Outline: Verify that project status changes to 'soft locked' when ACS is completed for every participant.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And Search the Project name
    Then verify the project status
    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata18 | Professional_Account | Username | Password |
    
     @ACSpro_19
  Scenario Outline: Verify that pop up message appears once , after clicking back button multiple times from browser.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    Then Click back button top from the browser
    Then user is able to see the alert message
    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata19 | Professional_Account | Username | Password |
      
     @ACSpro_20
  Scenario Outline: Test to check if demographic questions page/ participant list is visible when second and third check boxes are selected in project.
	    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
	    Given user navigates to the application
	    When user clicks on the sign up
	    When user enters the "<username>" and "<password>"
	    When user clicks on the signin button for login
	    And hover on the admin name
	    And click on the "Participants" option
	    And Select the project from the dropdown
	    And click on the "Submit" button
	    And Search with first name
	    Then click on participant search button
	    And Select the view "Participant ACS" option
	    And click on the Manage ACS option
	    And Select the acs "Initiate Remote ACS" option
	    Given user navigates to the URL
	    And enter the email and submit
	    And User clicks on complete assessment button
	    Then "Remote ACS" page is displayed
	    And select the date_of_Birth
	    And enter the  "Zip Code" in the field
	    And click on the " Submit " button
	    Then "Demographic Survey" page is displayed
	    Examples:
	      | TestData  | SheetName     | username | password |
	      | Testdata20 | Professional_Account | Username | Password |

 			@ACSpro_21 
   Scenario Outline: Test to check if Participants list / Promis -29 results page is visible when third and fourth check boxes are selected in project.  
	    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
	    Given user navigates to the application
	    When user clicks on the sign up
	    When user enters the "<username>" and "<password>"
	    When user clicks on the signin button for login
	    And hover on the admin name
	    And click on the "Participants" option
	    And Select the project from the dropdown
	    And click on the "Submit" button
	    And Search with first name
	    Then click on participant search button
	    And Select the view "Participant ACS" option
	    And click on the Manage ACS option
	    And Select the acs "Start ACS" option
	    And hover on the admin name
	    Then click on the sign out button
	    Examples:
	      | TestData  | SheetName     | username | password |
	      | Testdata21 | Professional_Account | Username | Password |

      

     @ACS_pro22
   Scenario Outline: Test to check if Participants list / Promis -29 results page is visible when third and fourth check boxes are selected in project.  
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the "Participants" option
    And Select the project from the dropdown
    And click on the "Submit" button
    And Search with first name
    Then click on participant search button
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Start ACS" option
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata22 | Professional_Account | Username | Password |
      
      
      @ACSpro_25
    Scenario Outline: Test to check if Ask about activities that they do with others Promis -29 results page is visible when first and fourth check boxes are selected in project.
	    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
	    Given user navigates to the application
	    When user clicks on the sign up
	    When user enters the "<username>" and "<password>"
	    When user clicks on the signin button for login
	    And hover on the admin name
	    And click on the "Participants" option
	    And Select the project from the dropdown
	    And click on the "Submit" button
	    And Search with first name
	    Then click on participant search button
	    And Select the view "Participant ACS" option
	    And click on the Manage ACS option
	    And Select the acs "Start ACS" option
	    Then select the options to the questions
	    Then click on Begin ACS button
	    And hover on the admin name
	    Then click on the sign out button
	    Examples:
	      | TestData  | SheetName     | username | password |
	      | Testdata25 | Professional_Account | Username | Password |

  		@ACSpro_26
    Scenario Outline: Test to check if Ask about activities that they do with others and Ask demographic questions is visible when user select first and second check boxes  in selected project
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the "Participants" option
    And Select the project from the dropdown
    And click on the "Submit" button
    And Search with first name
    Then click on participant search button
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Start ACS" option  
    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata26 | Professional_Account | Username | Password | 
      
      
    @ACSpro_27
   Scenario Outline: Test to check if Ask about activities that they do with others and participant list without search is visible, when user select first and third check boxes  in selected project. 
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the "Participants" option
    And Select the project from the dropdown
    And click on the "Submit" button
    And Search with first name
    Then click on participant search button
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Start ACS" option  
    Then click on Begin ACS button 
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata27 | Professional_Account | Username | Password |
  
		@ACSpro_29
   Scenario Outline: Test to check if Ask demographic questions and Display participant list without searchis visible, when user select second and third check boxes  in selected project.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the "Participants" option
    And Select the project from the dropdown
    And click on the "Submit" button
    And Select the view "Participant ACS" option    
    And click on the Manage ACS option
    And Select the acs "Start ACS" option
    Then "Demographic Survey" page is display  
    And hover on the admin name
    Then click on the sign out button    
    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata29 | Professional_Account | Username | Password |
      
     @ACSpro_31
   Scenario Outline: Test to check if' Display participant list without search and Administer PROMIS-29 is visible, when user select third and fourth check boxes in selected  project.    
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the "Participants" option
    And Select the project from the dropdown
    And click on the "Submit" button
    And Search with first name
    Then click on participant search button
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Initiate Remote ACS" option
    Given user navigates to the URL
    And enter the email and submit
    And User clicks on complete assessment button
    Then "Remote ACS" page is displayed
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
    Then "Demographic questions" page is displayed
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata31 | Professional_Account | Username | Password |
  
    @ACSpro_32 
   Scenario Outline: Test to check if Exit button is working on ACS start page..
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the "Participants" option
    And Select the project from the dropdown
    And click on the "Submit" button
    And Search with first name
    Then click on participant search button
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Start ACS" option  
    Then click on exit button
    And hover on the admin name
    Then click on the sign out button
    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata27 | Professional_Account | Username | Password |
      