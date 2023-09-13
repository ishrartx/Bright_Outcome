Feature: validate the Professional Account functionality

	@ACSpro_1 @Web
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
      
  @ACSpro_2 @Web
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
    Then verify if the project details are displayed
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |	SheetName	|	username | password |	username1	|	password1	|
      | Testdata2 |	Professional_Account |	Username | Password |	Project_Admin_username	|	Project_Admin_password	|
      
  @ACSpro_3 @Web
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
      
  @ACSpro_4 @Web
  Scenario Outline:: Test to check if user is able to add existing professionals in the project.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
    And create the new project and add it in "<Column>" of "<Testdata>" under "<SheetName>"
    When click on the " Add project " button
    And search the newly added project
    And Select the "View professionals" option of newly added project
    And click the Manage Professional option
		And Select A "Add existing professional" option
		And select an existing professional "<project_admin>"
		And select existing professional as admin
		And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
		And search the newly added project
		And Select the "View professionals" option of newly added project
    Then " Professionals " page is displayed
    And click the Manage Professional option
		And Select A "Add existing professional" option
		And select an existing professional "<existing_professional>"
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  |	SheetName	           |	username | password |	username1	              |	   password1           	|	existing_professional 	    | project_admin				|	Column	|
      | Testdata4 |	Professional_Account |	Username | Password |	Project_Admin_username	|	Project_Admin_password	| Existing_Professional_Name	|	Project_Admin_Name	|	4	|
      
  @ACSpro_5 @Web
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
    And enter the new "Email" in the field
    And enter the  "Zip Code" in the field
    And enter the  "Incident" in the field
    And enter the  "Participant ID" in the field
    And select the date_of_Birth
    And select the gender
    And click on the " Submit " button
    Then verify that " Manage ACS " button is present
   	And hover on the admin name
  	Then click on the sign out button
    
    Examples:
      | TestData  | SheetName            |
      | Testdata5 | Professional_Account |

  @ACSpro_6 @Web
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
    And hover on the admin name
  	Then click on the sign out button
    
    Examples:
      | TestData  | SheetName            |
      | Testdata6 | Professional_Account |

  @ACSpro_7 @Web
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
    And hover on the admin name
  	Then click on the sign out button
    
    Examples:
      | TestData  | SheetName            |
      | Testdata7 | Professional_Account |

    @ACSpro_8 @Web
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
      And hover on the admin name
  		Then click on the sign out button
      
      Examples:
        | TestData  | SheetName            |
        | Testdata7 | Professional_Account |

    @ACSpro_9 @Web
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
      And hover on the admin name
    	Then click on the sign out button
      
      Examples:
        | TestData  | SheetName            |
        | Testdata7 | Professional_Account |
        
  @ACSpro_10 @Web
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
    And hover on the admin name
    Then click on the sign out button
    
    Examples:
      | TestData  | SheetName            |
      | Testdata10 | professional_account |
    
	@ACSpro_12 @Web
  Scenario Outline: Test to check if user can add participants by admin account.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the "<username>" and "<password>"
    When user clicks on the signin button for login
    And hover on the admin name
    Then participant option is not visible
    And click on the sign out button

    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata12 | Professional_Account | Username | Password |      

  @ACSpro_13 @Web
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
    And enter the new "Email" in the field
    And enter the  "Zip Code" in the field
    And enter the  "Incident" in the field
    And enter the  "Participant ID" in the field
    And select the date_of_Birth
    And select the gender
    And click on the " Submit " button
    Then user is able to add the participant "First name"
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata13 | Professional_Account | Username | Password |
      
  @ACSpro_14 @Web
	Scenario Outline:: Test to check if project status changed to 'Soft locked' after adding participant to project.
		Given Read the testdata "<TestData>" and "<SheetName>" from excel file
		Given user navigates to the application
		When user clicks on the sign up
		When user enters the "<username>" and "<password>"
		When user clicks on the signin button for login
		And hover on the admin name
		And click on the " Projects " option
		And create the new project and add it in "<Column>" of "<TestData>" under "<SheetName>" 
    When click on the " Add project " button
    And search the newly added project
    And Select the "View professionals" option of newly added project
    And click the Manage Professional option
		And Select A "Add existing professional" option
		And select an existing professional "<project_admin>"
		And select existing professional as admin
		And hover on the admin name
    Then click on the sign out button
    When user clicks on the sign up
    When user enters the "<username1>" and "<password1>"
    When user clicks on the signin button for login
    And hover on the admin name
    And click on the " Projects " option
		And search the newly added project
		And verify the project status "Unlocked"
		And hover on the admin name
		And click on the "Participants" option
		And Select the newly project from the dropdown
		And click on the "Submit" button
		And click on the "Add participant " link button
		And enter the  "First name" in the field
		And enter the  "Last name" in the field
		And enter the new "Email" in the field
		And enter the  "Zip Code" in the field
		And enter the  "Incident" in the field
		And enter the  "Participant ID" in the field
		And select the date_of_Birth
		And select the gender
		And click on the " Submit " button
		And hover on the admin name
		And click on the " Projects " option
		And search the newly added project
		And verify the project status "Soft-locked"
		And hover on the admin name
		Then click on the sign out button
		
		Examples:
			| TestData | SheetName | username | password |	username1	|	password1	|	project_admin	| Column	|
			| Testdata14 | Professional_Account | Username | Password |	Project_Admin_username	|	Project_Admin_password	|	Project_Admin_Name	|	4	|
 
	@ACSpro_15 @Web
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
		
		Examples:
			| TestData | SheetName | username | password |
			| Testdata15 | Professional_Account | Username | Password |

  @ACSpro_16 @Web 
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
    And hover on the admin name
		Then click on the sign out button
    
    Examples:
      | TestData   | SheetName            |
      | Testdata16 | professional_account |

  @ACSpro_17 @Web 
  Scenario Outline:Verify that project status remains 'hard locked' when ACS is pending for any participant.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    And hover on the admin name
    And Search the Project name
    Then verify the project status
    And hover on the admin name
		Then click on the sign out button
    
    Examples:
      | TestData   | SheetName            |
      | Testdata17 | professional_account |

  @ACSpro_18 @Web
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
    
  @ACSpro_19 @Web
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
      
  @ACSpro_20 @Web
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

 	 @ACSpro_21  @Web
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

   @ACSpro_22 @Web
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
      
 	@ACSpro_23 @MobileTest
  Scenario Outline: Mobile_Test to check if 'Ask about activities that they do with others' / 'demographic questions' page page is visible when first and second check boxes are selected in project.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
  	Given user opens emulator "<DeviceDetails>"
    Given user navigates to the application
    When user clicks on navbar button
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    When user clicks on the toggle button
    And click on the admin name
    And create the new project and add it in "<Column>" of "<TestData>" under "<SheetName>"
    When click on the " Add project " button
    And search the newly added project
    And Select the "View details" option of newly added project
    When user clicks on the toggle button
    And select project template setting
    And select checkboxes in Activity card options
    Then click on "Update Project" button of newly added project
    And search the newly added project
    And Select the "View professionals" option of newly added project
    And click the Manage Professional option
    And Select A "Add existing professional" option
    And select the professional
    And select existing professional as admin newly adeed project
    And click on back button
    When user clicks on navbar button
    And click on the admin name
    And click on the "Participants" option
    When user clicks on the toggle button
    And Select the newly project from the dropdown
    And click on the "Submit" button
    And click on the "Add participant " link button
    And enter the  "First name" in the field
    And enter the  "Last name" in the field
    And enter the new "Email" in the field
    And enter the  "Zip Code" in the field
    And enter the  "Incident" in the field
    And enter the  "Participant ID" in the field
    And select the date_of_Birth
    And select the gender
    And click on the " Submit " button
    And Select the acs "Initiate Mobile ACS" option
    And read the QR code
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the begin acs option
    Then user should beable to see the Demographic page
    Then select the "<options>" radio buttons
    Then enter the city name
    And click on the submit button
    Then user is able to see the activity card
		And click on the "Begin ACS" link button
    Then user is able to see the activities card page
    When user clicks on navbar button
    And hover on the admin name
	  Then click on the sign out button

    Examples:
      | TestData   | SheetName | options                                                                                                                       | DeviceDetails	|	Column	|
      | Testdata23 | Professional_Account | White:Married:1 :Rent:Less than 20,000:Self-employed:Bachelor’s degree (e.g. BA, BS):Difficulty seeing:No:Stroke |	Pixel 4_11.0	|	4	|
      
   @ACSpro_24 @MobileTest
   Scenario Outline: mobile_validate the second mobile test case
  	Given Read the testdata "<TestData>" and "<SheetName>" from excel file
  	Given user opens emulator "<DeviceDetails>"
    Given user navigates to the application
    When user clicks on navbar button
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    When user clicks on the toggle button
	  And click on the admin name
	  And click on the "Participants" option
	  When user clicks on the toggle button
	  And Select the project from the dropdown
	  And click on the "Submit" button
	  Then verify the participant is visible
		And Select the view "Participant ACS" option
		And click on the Manage ACS option
		And Select the acs "Initiate Mobile ACS" option
		And read the QR code
		And select the date_of_Birth
		And enter the  "Zip Code" in the field
		And click on the begin acs option
		And click on the "Begin ACS" link button
		Then user is able to see the activities card page
		When user clicks on navbar button
		And hover on the admin name
	  Then click on the sign out button

  Examples:
    | TestData   | SheetName            | DeviceDetails	|                                                                                                                  
    | Testdata24 | Professional_Account |	Pixel 4_11.0	|      
      
      
   @ACSpro_25 @Web
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

  @ACSpro_26 @Web
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
      
      
  @ACSpro_27 @Web
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
      
    @ACSpro_28 @MobileTest
    Scenario Outline: Mobile_Test to check if 'Ask about activities that they do with others'/ 'demographic questions' page page is visible when first and second check boxes are selected in project
      Given Read the testdata "<TestData>" and "<SheetName>" from excel file
	  	Given user opens emulator "<DeviceDetails>"
	    Given user navigates to the application
	    When user clicks on navbar button
	    When user clicks on the sign up
	    When user enters the username and password
	    When user clicks on the signin button for login
	    When user clicks on the toggle button
      And create the new project and add it in "<Column>" of "<Testdata>" under "<SheetName>"
      When click on the " Add project " button
      And search the newly added project
      And Select the "View details" option of newly added project
      When user clicks on the toggle button
      And select project template setting
      And select checkboxes in Activity card options
      Then click on "Update Project" button of newly added project
      And search the newly added project
      And Select the "View professionals" option of newly added project
      And click the Manage Professional option
      And Select A "Add existing professional" option
      And select the professional
      And select existing professional as admin newly adeed project
      And click on back button
      When user clicks on navbar button
      And click on the admin name
      And click on the "Participants" option
      When user clicks on the toggle button
      And Select the newly project from the dropdown
      And click on the "Submit" button
      And click on the "Add participant " link button
      And enter the  "First name" in the field
      And enter the  "Last name" in the field
      And enter the new "Email" in the field
      And enter the  "Zip Code" in the field
      And enter the  "Incident" in the field
      And enter the  "Participant ID" in the field
      And select the date_of_Birth
      And select the gender
      And click on the " Submit " button
      And Select the acs "Initiate Mobile ACS" option
      And read the QR code
      And select the date_of_Birth
      And enter the  "Zip Code" in the field
      And click on the begin acs option
     	Then user should beable to see the promis page
      Then select the "<options>" radio buttons of promis page
      Then click on the slider
      And click on the " Next " button
      Then user is able to see the activity card
      And click on the "Begin ACS" link button
      Then user is able to see the activities card page
      When user clicks on navbar button
			And hover on the admin name
	  	Then click on the sign out button

      Examples:
        | TestData   | SheetName            | options                                                                                     | DeviceDetails	|	Column	|
        | Testdata28 | Professional_Account | 1:10:15:18:24:29:33:39:45:47:54:58:62:68:71:78:82:88:94:100:103:108:115:117:122:128:133:137 |	Pixel 4_11.0	|	4	|
  
	@ACSpro_29 @Web
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
      

  @ACSpro_30 @Web
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
      | Testdata30 | Professional_Account | Username | Password |  
      
  @ACSpro_31 @Web
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
  
  @ACSpro_32  @Web
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
      
   	@ACSpro_33  @Web
    Scenario Outline: validating the another test case
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
      And Select the view "Participant ACS" option
      And click on the Manage ACS option
      And Select the acs "Start ACS" option
      And click on the "Begin ACS" link button
      And Select the testcase "Test Case Three" option
      And click on the "Test" button
      And select the options for "<Continue since Stroke>"
      And select the options for "<Started after Stroke>"
      And select the options for "<Doing less>"
      And hover on the admin name
      Then click on the sign out button

      Examples:
        | TestData  | SheetName            | Continue since Stroke                           | Started after Stroke                | Doing less                        |
        | Testdata33 | Professional_Account | Light cleaning, Sewing projects, Heavy cleaning | Ironing, Paying bills, Go to movies | Pet care, Text messaging, Hunting |
        
		@ACSpro_33 @MobileTest
    Scenario Outline: Mobile_validating the mobile test case functionlity
      Given Read the testdata "<TestData>" and "<SheetName>" from excel file
			Given user opens emulator "<DeviceDetails>"
		  Given user navigates to the application
		  When user clicks on navbar button
		  When user clicks on the sign up
		  When user enters the username and password
		  When user clicks on the signin button for login
		  When user clicks on the toggle button
      And click on the admin name
      And click on the "Participants" option
      When user clicks on the toggle button
      And Select the project from the dropdown
      And click on the "Submit" button
      And enter the first and last name
      Then click on participant search button
      And Select the view "Participant ACS" option
      And click on the Manage ACS option
      And Select the acs "Initiate Mobile ACS" option
      And read the QR code
      And select the date_of_Birth
      And enter the  "Zip Code" in the field
      And click on the begin acs option
      And select the options for "<Have given up>"
      And select the options for "<Would like to start>"
      And select the options for "<Doing with others>"
      And Select the Activities "Activity takes too long" checkbox
      And click on the " back to Participant ACS" link button
      Then Activities current values match
        |Global|
        |Instrumental|
        |Leisure|
        |Fitness/Exercise|
        |Social|
			When user clicks on navbar button
			And click on the username at topmost right corner 
	    Then click on the sign out button
    
      Examples:
        | TestData   | SheetName           |	DeviceDetails | Have given up          | Would like to start                | Doing with others                  |
        | Testdata33 | Professional_Account |	Pixel 4_11.0	| Work, Puzzles, Camping | Childcare, Bicycling, Birdwatching | Light cleaning, Puzzles, Bicycling |
      
  @ACSpro_34 @Web
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase4.
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
    Then click on ACS "Begin ACS" button
    And click on the testcase option
    And Select the testcase "Test Case Four" option
    And click on the "Test" button
    And select the tiles
    And Select the Activities "Activity takes too long" checkbox
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata34 | Professional_Account | Username | Password |
      
   @ACSpro_35 @Web
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase1.
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
		And Select the testcase "Test Case One" option
		And click on button with text "Test"
		And select the options for "<Will continue to do>"
		And select the options for "<May do less>"
		And hover on the admin name
    Then click on the sign out button
    
    Examples:
    	|	TestData	|	SheetName	| username	|	password	| Will continue to do	| May do less	|
    	| Testdata35	|	Professional_Account	|	Username	|	Password	| Shopping for groceries, Driving, Handcrafts	|	Ironing, Pet care, Exercise	|
    	
  @ACSpro_35 @MobileTest
  Scenario Outline: Mobile_Test to check if ACS Scores match, when user complete the ACS with mobile, selecting TestCase1.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
  	Given user opens emulator "<DeviceDetails>"
    Given user navigates to the application
    When user clicks on navbar button
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
    When user clicks on the toggle button
    And click on the admin name
		And click on the "Participants" option
		When user clicks on the toggle button
		And Select the project from the dropdown
		And click on the "Submit" button
		And Search with first name
		Then click on participant search button
		And Select the view "Participant ACS" option
		And click on the Manage ACS option
		And Select the acs "Initiate Mobile ACS" option
		And read the QR code
		And select the date_of_Birth
		And enter the  "Zip Code" in the field
		And click on android back button
		And click on button with text " Begin ACS "
		And select the options for "<May give up>"
		And select the options for "<Would like to start>"
		When user clicks on navbar button
		And click on the username at topmost right corner 
    Then click on the sign out button
    
    Examples:
    	|	TestData	|	SheetName	| DeviceDetails	|	May give up	|	Would like to start	|
    	| Testdata35	|	Professional_Account	| Pixel 4_11.0 |	Light cleaning, Creative writing, Photography |	Heavy cleaning, Cooking, Puzzles	|
    	
  @ACSpro_35 @Web
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase1.
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
    And click on the " Resume existing session " button
    Given user navigates to the URL
    And enter the email and submit
    And User clicks on complete assessment button
    Then "Remote ACS" page is displayed
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
		And select the checkboxes for "<Barriers>"
		And click on the " back to Participant ACS" link button
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
		And hover on the admin name
    Then click on the sign out button
    
    Examples:
    	|	TestData	|	SheetName	| username	|	password	|	Barriers	|
    	| Testdata35	|	Professional_Account	| Username | Password | I get stressed, Trouble paying attention, I feel weak	|

  @ACSpro_36 @Web
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase2.
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
    Then click on ACS "Begin ACS" button
    And click on the testcase option
    And Select the testcase "Test Case Two" option
    And click on the "Test" button
    And select the tiles
    And Select the Activities "Activity takes too long" checkbox
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata36 | Professional_Account | Username | Password |

  @ACSpro_37 @Web
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase6.
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
    Then click on ACS "Begin ACS" button
    And click on the testcase option
    And Select the testcase "Test Case Six" option
    And click on the "Test" button
    And hover on the admin name
    And click on the "Participants" option
    And Select the project from the dropdown
    And click on the "Submit" button
    And Search with first name
    Then click on participant search button
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Initiate Remote ACS" option
    And click on the " Resume existing session " button
    Given user navigates to the URL
    And enter the email and submit
    And User clicks on complete assessment button
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
    And select the tiles
    And Select the Activities "Activity takes too long" checkbox
    Then click on ACS " back to Participant ACS" button
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata37 | Professional_Account | Username | Password |

  @ACSpro_38 @Web
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase4.
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
    Then click on ACS "Begin ACS" button
    And click on the testcase option
    And Select the testcase "Test Case Five" option
    And click on the "Test" button
    And select the tiles
    And Select the Activities "Activity takes too long" checkbox
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata38 | Professional_Account | Username | Password |
      
   @ACSpro_39 @MobileTest
  Scenario Outline: Mobile_Test to check if ACS Scores match, when user complete the ACS with mobile, selecting TestCase1.
  	Given Read the testdata "<TestData>" and "<SheetName>" from excel file
  	Given user opens emulator "<DeviceDetails>"
    Given user navigates to the application
    When user clicks on navbar button
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
		When user clicks on the toggle button
		And click on the admin name
		And click on the "Participants" option
		When user clicks on the toggle button
		And Select the project from the dropdown
		And click on the "Submit" button
		And Search with first name
		Then click on participant search button
		And Select the view "Participant ACS" option
		And click on the Manage ACS option
		And Select the acs "Initiate Mobile ACS" option
		And read the QR code
		And select the date_of_Birth
		And enter the  "Zip Code" in the field
		And click on android back button
		And click on button with text " Begin ACS "
		Then click on Begin ACS button
		And Select the testcase "Test Case One" option
		And click on button with text "Test"
		And select the options for "<Continue since Stroke>"
		And select the options for "<Started after Stroke>"
		And select the options for "<Doing less>"
		When user clicks on navbar button
		And click on the admin name
    Then click on the sign out button
    
    Examples:
    	|	TestData	|	SheetName	| DeviceDetails	|	Continue since Stroke	| Started after Stroke	|	Doing less	|
    	| Testdata39	|	Professional_Account	| Pixel 4_11.0 |	Shopping for groceries, Ironing, Birdwatching	|	Light cleaning, Sewing projects, Camping	|	Heavy cleaning, Work, Walking |
    	
  @ACSpro_39 @Web
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with mobile, selecting TestCase1.
  	Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password
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
		And click on the " Resume existing session " button
		And select the options for "<Have given up>"
		And select the options for "<Would like to start>"
		And select the checkboxes for "<Barriers>"
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
		And click on the admin name
    Then click on the sign out button
    
    Examples:
    	|	TestData	|	SheetName	|	Have given up	| Would like to start	|	Barriers	|
    	| Testdata39	|	Professional_Account	|	Photography, Running, Skiing/skating	|	Driving, Pet care, Swimming	|	I feel tired, I feel anxious, I get frustrated |
 
   @ACSpro_40 @MobileTest
  Scenario Outline: Mobile_Test to check if ACS Scores match, when user complete the ACS with mobile, selecting TestCase2.	
  	Given Read the testdata "<TestData>" and "<SheetName>" from excel file
  	Given user opens emulator "<DeviceDetails>"
    Given user navigates to the application
    When user clicks on navbar button
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
		When user clicks on the toggle button
		And click on the admin name
		And click on the "Participants" option
		When user clicks on the toggle button
		And Select the project from the dropdown
		And click on the "Submit" button
		And Search with first name
		Then click on participant search button
		And Select the view "Participant ACS" option
		And click on the Manage ACS option
		And Select the acs "Initiate Mobile ACS" option
		And read the QR code
		And select the date_of_Birth
		And enter the  "Zip Code" in the field
		And click on android back button
		And click on button with text " Begin ACS "
		Then click on Begin ACS button
		And Select the testcase "Test Case Two" option
		And click on button with text "Test"
		And select the options for "<Continue since Stroke>"
		And select the options for "<Started after Stroke>"
		And select the options for "<Doing less>"
		And select the options for "<Have given up>"
		And select the options for "<Would like to start>"
		And select the checkboxes for "<Barriers>"
		And click on the " back to Participant ACS" link button
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
		When user clicks on navbar button
		And click on the admin name
    Then click on the sign out button
    
    Examples:
    	|	TestData	|	SheetName	| DeviceDetails	|	Continue since Stroke	| Started after Stroke	|	Doing less	|	Have given up	|	Would like to start	|	Barriers	|
    	| Testdata40	|	Professional_Account	| Pixel 4_11.0 |	Work, Puzzles, Walking	|	Volunteering, Pet care, Running	|	Ironing, Window shopping, Go to movies |	Playing cards, Listen to music, Fitness classes	|	Photography, Hiking, Dancing	|	I feel tired, I feel anxious, I get frustrated |
      
	@ACSpro_41 @MobileTest
  Scenario Outline: Mobile_Test to check if ACS Scores match, when user complete the ACS with mobile, selecting TestCase3.
   Given Read the testdata "<TestData>" and "<SheetName>" from excel file
   Given user opens emulator "<DeviceDetails>"
   Given user navigates to the application
   When user clicks on navbar button
   When user clicks on the sign up
   When user enters the username and password
   When user clicks on the signin button for login
   When user clicks on the toggle button
   And click on the admin name
   And click on the "Participants" option
   When user clicks on the toggle button
   And Select the project from the dropdown
   And click on the "Submit" button
   And Search with first name
   Then click on participant search button
   And Select the view "Participant ACS" option
   And click on the Manage ACS option
   And Select the acs "Initiate Mobile ACS" option
   And read the QR code
   And select the date_of_Birth
   And enter the  "Zip Code" in the field     
   And click on the begin acs option
   Then click on ACS "Begin ACS" button
   And Select the testcase "Test Case Three" option
   And click on the "Test" button
   Then click on the "Mending/repairing clothes " tiles
   And click on the "Next" option
   When user clicks on navbar button   
   And click on the admin name
   Then click on the sign out button

   Examples:
    | TestData   | SheetName            | DeviceDetails |                                                                                                                  
    | Testdata41 | Professional_Account | Pixel 4_11.0 |
    
	@ACSpro_41 @Web
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with mobile, selecting TestCase3.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
    Given user navigates to the application
    When user clicks on the sign up
    When user enters the username and password   
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
    And click on the " Resume existing session " button    
    Given user navigates to the URL        
    And enter the email and submit
    And User clicks on complete assessment button
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
    And select few random tiles
    And Select the Activities "Activity takes too long" checkbox
    Then click on ACS " back to Participant ACS" button    
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
    And hover on the admin name
    Then click on the sign out button    

    Examples:
    | TestData   | SheetName            |                                                                                                                  
    | Testdata41 | Professional_Account |
    
	@ACSpro_42 @MobileTest
  Scenario Outline: Mobile_validating the mobile test case functionlity
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
  	Given user opens emulator "<DeviceDetails>"
    Given user navigates to the application
    When user clicks on navbar button
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
		When user clicks on the toggle button
    And click on the admin name
    And click on the "Participants" option
    When user clicks on the toggle button
    And Select the project from the dropdown
    And click on the "Submit" button
    And enter the first and last name
    Then click on participant search button
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Initiate Mobile ACS" option
    And read the QR code
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the begin acs option
    Then user should beable to see the promis page
    Then select the "<options>" radio buttons of promis page
    Then click on the slider
    And click on the " Next " button
    And click on the "Begin ACS" link button
    And Select the testcase "Test Case Four" option
    And click on the "Test" button
    And select the options for "<Will continue to do>"
    And select the options for "<May do less>"
		When user clicks on navbar button
		And hover on the admin name
	  Then click on the sign out button

    Examples:
      | TestData  | SheetName            |	DeviceDetails	| Will continue to do                | May do less                 | Doing with others                  | options                                                                                     |
      | Testdata42 | Professional_Account	| Pixel 4_11.0 | Doing laundry, Fishing, Eating out | Ironing, Exercise, Intimacy | Light cleaning, Puzzles, Bicycling | 1:10:15:18:24:29:33:39:45:47:54:58:62:68:71:78:82:88:94:100:103:108:115:117:122:128:133:137 |

  @ACSpro_42 @Web
  Scenario Outline: Validating the mobile test case functionlity
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
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Initiate Remote ACS" option
    And click on the " Resume existing session " button
    Given user navigates to the URL
    And enter the email and submit
    And User clicks on complete assessment button
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
    And select the options for "<May give up>"
    And select the options for "<Would like to start>"
    And hover on the admin name in remote
    Then click on the sign out button

    Examples:
      | TestData  | SheetName            | May give up                  | Would like to start     | Doing with others                  | options                                                                                     |
      | Testdata42 | Professional_Account | Driving, Hiking, Group games | Work, Swimming, Boating | Light cleaning, Puzzles, Bicycling | 1:10:15:18:24:29:33:39:45:47:54:58:62:68:71:78:82:88:94:100:103:108:115:117:122:128:133:137 |

  @ACSpro_42 @Web
  Scenario Outline: Validating the mobile test case functionlity
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
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
  	And Select the acs "Start ACS" option
    And click on the " Resume existing session " button
    And Select the Activities "Activity takes too long" checkbox
    And click on the "Next" link button
    And click on the " back to Participant ACS" link button
    Then Activities current values match
      | Global           |
      | Instrumental     |
      | Leisure          |
      | Fitness/Exercise |
      | Social           |
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData  | SheetName            | May give up                  | Would like to start     | Doing with others                  | options                                                                                     |
      | Testdata42 | Professional_Account | Driving, Hiking, Group games | Work, Swimming, Boating | Light cleaning, Puzzles, Bicycling | 1:10:15:18:24:29:33:39:45:47:54:58:62:68:71:78:82:88:94:100:103:108:115:117:122:128:133:137 |
    
  @ACSpro_43 @MobileTest
  Scenario Outline: Mobile_Test to check if ACS Scores match, when user complete the ACS with mobile, selecting TestCase5..
   Given Read the testdata "<TestData>" and "<SheetName>" from excel file
   Given user opens emulator "<DeviceDetails>"
   Given user navigates to the application
   When user clicks on navbar button
   When user clicks on the sign up
   When user enters the username and password
   When user clicks on the signin button for login
   When user clicks on the toggle button
	 And click on the admin name
	 And click on the "Participants" option
	 When user clicks on the toggle button
	 And Select the project from the dropdown
	 And click on the "Submit" button
   And Search with first name
   Then click on participant search button
	 And Select the view "Participant ACS" option
	 And click on the Manage ACS option
	 And Select the acs "Initiate Mobile ACS" option
	 And read the QR code
	 And select the date_of_Birth
	 And enter the  "Zip Code" in the field	 
	 And click on the begin acs option
	 Then click on ACS "Begin ACS" button
   And Select the testcase "Test Case Five" option
   And click on the "Test" button
   And select the tiles
   And Select the Activities "Activity takes too long" checkbox
   Then click on ACS " back to Participant ACS" button
   Then Activities current values match
        |Global|
        |Instrumental|
        |Leisure|
        |Fitness/Exercise|
        |Social|
   When user clicks on navbar button   
   And click on the admin name
   Then click on the sign out button
        
    Examples:
    | TestData   | SheetName            | DeviceDetails	|                                                                                                                  
    | Testdata43 | Professional_Account |	Pixel 4_11.0	|
    
  @ACSpro_44 @MobileTest  
	Scenario Outline: Mobile_Test to check if ACS Scores match, when user complete the ACS with mobile, selecting TestCase6.
	  Given Read the testdata "<TestData>" and "<SheetName>" from excel file
		Given user opens emulator "<DeviceDetails>"
	  Given user navigates to the application
	  When user clicks on navbar button
	  When user clicks on the sign up
	  When user enters the username and password
	  When user clicks on the signin button for login
		When user clicks on the toggle button
	  And click on the admin name
	  And click on the "Participants" option
	  When user clicks on the toggle button
	  And Select the project from the dropdown
	  And click on the "Submit" button
	  And Search with first name
	  Then click on participant search button
	  And Select the view "Participant ACS" option
	  And click on the Manage ACS option
	  And Select the acs "Initiate Mobile ACS" option
	  And read the QR code
	  And select the date_of_Birth
	  And enter the  "Zip Code" in the field
	  And click on the begin acs option
	  Then user should beable to see the promis page
	  Then select the "<options>" radio buttons of promis page
	  Then click on the slider
	  And click on the " Next " button
	  And click on the "Begin ACS" link button
	  And Select the testcase "Test Case Six" option
	  And click on the "Test" button
	  And select the options for "<Doing now>"
	  And select the options for "<Doing less>"
	  And select the options for "<Have given up>"
	  And select the options for "<Would like to start>"
	  And select the options for "<Doing with others>"
	  And Select the Activities "Activity takes too long" checkbox
	  And click on the "Next" link button
	  And click on the " back to Participant ACS" link button
	  Then Activities current values match
	    | Global           |
	    | Instrumental     |
	    | Leisure          |
	    | Fitness/Exercise |
	    | Social           |
		When user clicks on navbar button
		And hover on the admin name
	  Then click on the sign out button
	
	  Examples:
	
	    | TestData   | SheetName            | DeviceDetails | options                                                                                     | Doing now                                     | Doing less                  | Have given up                        | Would like to start       | Doing with others          | Barriers                                       |
	    | Testdata44 | Professional_Account | Pixel 4_11.0  | 1:10:15:18:24:29:33:39:45:47:54:58:62:68:71:78:82:88:94:100:103:108:115:117:122:128:133:137 | Shopping for groceries, Driving, Paying bills | Hunting, Exercise, Intimacy | Doing laundry, Gardening, Eating out | Cooking, Camping, Running | Driving, Hunting, Intimacy | I feel tired, I feel anxious, I get frustrated |

  @ACSpro_45 @Web
  Scenario Outline: Test check if ACS Scores match, when user complete the ACS with web, selecting TestCase5.
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
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
    Then click on ACS "Begin ACS" button
    And Select the testcase "Test Case Five" option
    And click on the "Test" button
    Then click on the "Yard maintenance " tiles
    Then click on the "Ironing " tiles
    Then click on the "Study for school " tiles
    And click on the "Next" option
    And click on the admin name
    Then click on the sign out button          
              
    Examples:
    | TestData   | SheetName            |                                                                                                                  
    | Testdata45 | Professional_Account |
    
  @ACSpro_45 @MobileTest 
  Scenario Outline: Mobile_Test check if ACS Scores match, when user complete the ACS with web, selecting TestCase5.    
   Given Read the testdata "<TestData>" and "<SheetName>" from excel file
   Given user opens emulator "<DeviceDetails>"
   Given user navigates to the application
   When user clicks on navbar button
   When user clicks on the sign up
   When user enters the username and password
   When user clicks on the signin button for login
   When user clicks on the toggle button
	 And click on the admin name
	 And click on the "Participants" option
	 When user clicks on the toggle button
	 And Select the project from the dropdown
	 And click on the "Submit" button
   And Search with first name
   Then click on participant search button
	 And Select the view "Participant ACS" option
	 And click on the Manage ACS option
	 And Select the acs "Initiate Mobile ACS" option
	 And read the QR code
	 And select the date_of_Birth
	 And enter the  "Zip Code" in the field	 
	 And click on the begin acs option
   Then select few random tiles
   And Select the Activities "Activity takes too long" checkbox   
   Then click on ACS " back to Participant ACS" button
   Then Activities current values match
        |Global|
        |Instrumental|
        |Leisure|
        |Fitness/Exercise|
        |Social|
   When user clicks on navbar button   
   And click on the admin name
   Then click on the sign out button 
    
        Examples:
    | TestData   | SheetName            | DeviceDetails	|                                                                                                                  
    | Testdata45 | Professional_Account |	Pixel 4_11.0	|

  @ACSpro_46 @Web
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase 6.
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
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
    Then selectweb options to the questions
    Then click on ACS "Begin ACS" button
    And Select the testcase "Test Case Six" option
    And click on the "Test" button
    And select the tiles
    And Select the Activities "Activity takes too long" checkbox
    Then click on ACS " back to Participant ACS" button
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata46 | Professional_Account | Username | Password |

  @ACSpro_47 @Web
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase2.
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
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
    Then click on ACS "Begin ACS" button
    And Select the testcase "Test Case Two" option
    And click on the "Test" button
    And hover on the admin name
    Then click on the sign out button
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
    And click on the " Resume existing session " button
    And select the tiles
    And Select the Activities "Activity takes too long" checkbox
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData  | SheetName     | username | password |
      | Testdata47 | Professional_Account | Username | Password |

   @ACSpro_48 @Web
   Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase2.
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
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
    Then click on ACS "Begin ACS" button
    And Select the testcase "Test Case Four" option
    And click on the "Test" button
    And select the tiles
    And Select the Activities "Activity takes too long" checkbox
    Then click on ACS " back to Participant ACS" button
    Then Activities current values match
        |Global|
        |Instrumental|
        |Leisure|
        |Fitness/Exercise|
        |Social|
    And hover on the admin name
    Then click on the sign out button

      Examples:
      | TestData  | SheetName     | username | password |
      | Testdata48 | Professional_Account | Username | Password |
      
  @ACSpro_49 @Web
  Scenario Outline: Mobile_validating the mobile test case functionlity
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
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Initiate Remote ACS" option
    Given user navigates to the URL
    And enter the email and submit
    And User clicks on complete assessment button
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
    And click on the "Begin ACS" link button
    And Select the testcase "Test Case One" option
    And click on the "Test" button
    And select the options for "<Doing now>"
    And select the options for "<Doing less>"
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData   | SheetName            | Doing now                    | Doing less                  | Doing with others                  | options                                                                                     |
      | Testdata49 | Professional_Account | Driving, Hiking, Group games | Hunting, Exercise, Intimacy | Light cleaning, Puzzles, Bicycling | 1:10:15:18:24:29:33:39:45:47:54:58:62:68:71:78:82:88:94:100:103:108:115:117:122:128:133:137 |


  @ACSpro_49 @MobileTest
  Scenario Outline: Mobile_validating the mobile test case functionlity
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
  	Given user opens emulator "<DeviceDetails>"
    Given user navigates to the application
    When user clicks on navbar button
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
		When user clicks on the toggle button
    And click on the admin name
    And click on the "Participants" option
    When user clicks on the toggle button
    And Select the project from the dropdown
    And click on the "Submit" button
    And enter the first and last name
    Then click on participant search button
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Initiate Mobile ACS" option
    And read the QR code
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the begin acs option
    And select the options for "<Have given up>"
    And select the options for "<Would like to start>"
    And select the options for "<Doing with others>"
    And Select the Activities "Activity takes too long" checkbox
    And click on the "Next" link button
    And click on the " back to Participant ACS" link button
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
		When user clicks on navbar button
		And hover on the admin name
	  Then click on the sign out button

    Examples:
      | TestData   | SheetName            | DeviceDetails	| Have given up                      | Would like to start       | Doing with others           | options                                                                                     |
      | Testdata49 | Professional_Account | Pixel 4_11.0 | Doing laundry, Fishing, Eating out | Cooking, Puzzles, Running | Exercise, Hunting, Intimacy | 1:10:15:18:24:29:33:39:45:47:54:58:62:68:71:78:82:88:94:100:103:108:115:117:122:128:133:137 |	
      
  @ACSpro_50 @Web  
  Scenario Outline: Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase three.
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
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Initiate Remote ACS" option
    Given user navigates to the URL
    And enter the email and submit
    And User clicks on complete assessment button
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the " Submit " button
    Then select the "<options>" radio buttons of promis page
		Then click on the slider
		And click on the " Next " button
    And click on the "Begin ACS" link button
    And Select the testcase "Test Case Three" option
    And click on the "Test" button
    And select the options for "<Doing now>"
    And select the options for "<Doing less>"
    And hover on the admin name
    Then click on the sign out button

    Examples:
      | TestData   | SheetName            | Doing now                    | Doing less                  | options                                                                                     |
      | Testdata50 | Professional_Account | Hunting, Group games, Exercise | Running, Swimming, Camping | 1:10:15:18:24:29:33:39:45:47:54:58:62:68:71:78:82:88:94:100:103:108:115:117:122:128:133:137 |


  @ACSpro_50 @MobileTest 
  Scenario Outline: Mobile_Test to check if ACS Scores match, when user complete the ACS with web, selecting TestCase three.
    Given Read the testdata "<TestData>" and "<SheetName>" from excel file
  	Given user opens emulator "<DeviceDetails>"
    Given user navigates to the application
    When user clicks on navbar button
    When user clicks on the sign up
    When user enters the username and password
    When user clicks on the signin button for login
		When user clicks on the toggle button
    And click on the admin name
    And click on the "Participants" option
    When user clicks on the toggle button
    And Select the project from the dropdown
    And click on the "Submit" button
    And enter the first and last name
    Then click on participant search button
    And Select the view "Participant ACS" option
    And click on the Manage ACS option
    And Select the acs "Initiate Mobile ACS" option
    And read the QR code
    And select the date_of_Birth
    And enter the  "Zip Code" in the field
    And click on the begin acs option
    And select the options for "<Have given up>"
    And select the options for "<Would like to start>"
    And Select the Activities "Activity takes too long" checkbox
    And click on the "Next" link button
    And click on the " back to Participant ACS" link button
    Then Activities current values match
      |Global|
      |Instrumental|
      |Leisure|
      |Fitness/Exercise|
      |Social|
		When user clicks on navbar button
		And hover on the admin name
	  Then click on the sign out button

    Examples:
      | TestData   | SheetName            | DeviceDetails	| Have given up                      | Would like to start       | options                                                                                     |
      | Testdata50 | Professional_Account | Pixel 4_11.0 | Doing laundry, Sewing projects, Walking | Cooking for fun, Meditating, Hiking | 1:10:15:18:24:29:33:39:45:47:54:58:62:68:71:78:82:88:94:100:103:108:115:117:122:128:133:137 |	      