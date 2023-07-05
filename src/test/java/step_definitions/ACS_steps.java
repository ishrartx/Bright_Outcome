package step_definitions;

import com.Buffer.BufferUtilSuiteLevel;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.Status;

import io.cucumber.java.After;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import org.apache.bcel.generic.Select;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import pageobjects.ACS_locators;
import utilities.*;

import java.awt.Checkbox;
import java.util.HashMap;
import java.util.List;
import org.testng.Assert;

public class ACS_steps extends KeywordUtil {

    public static HashMap<String, String> dataMap = new HashMap<String, String>();

    @Given("Read the testdata {string} from excel file")
    public void readTheTestdataFromExcelFile(String arg1) {
        dataMap = ExcelDataUtil.getTestDataWithTestCaseID("ACS", arg1);
    }

    @Given("user navigates to the application")
    public void navigates_to_the_application() {
        navigateToUrl(dataMap.get("URL"));
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }

    @When("user clicks on the sign up")
    public void click_Signup() throws InterruptedException {
        scrollingToElementofAPage(ACS_locators.sign_in, "move to signin");
        click(ACS_locators.sign_in, "click on the sign in button");
        Thread.sleep(2000);
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }

    @When("user enters the username and password")
    public void entercredentials() {
        inputText(ACS_locators.enter_username, dataMap.get("Username"), "enter the username");
        inputText(ACS_locators.enter_password, dataMap.get("Password"), "enter the password");
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }

    @When("user clicks on the signin button for login")
    public void clickssignin() throws InterruptedException {
        Thread.sleep(6000);
        click(ACS_locators.sign_up, "click on the sign in button");
    }

    @And("hover on the admin name")
    public void hover_admin() throws InterruptedException {
    	
       waitForVisible(ACS_locators.admin_name);
       waitForClickable(ACS_locators.admin_name);
        scrollingToElementofAPage(ACS_locators.admin_name, "move to admin name");
        click(ACS_locators.admin_name, "click on the admin name");
    }

    @And("click on the {string} option")
    public void clicktemplates(String dropdownname) throws InterruptedException {
    	waitForVisible(ACS_locators.dropdown_buttons(dropdownname));
        click(ACS_locators.dropdown_buttons(dropdownname), "click on the " + dropdownname + " option");
        waitForClickable(ACS_locators.dropdown_buttons(dropdownname));
        Thread.sleep(4000);
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }

    @And("enter the template name")
    public void enter_template_name() throws InterruptedException {
        inputText(ACS_locators.enter_tempalte_name, dataMap.get("Template_Name"), "enter the " + dataMap.get("Template_Name") + " in the text box");
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
    
    @And("Enter the project Name")
    public void enter_project_name() throws InterruptedException {
    	Thread.sleep(6000);
    	inputText(ACS_locators.enter_project_Name, dataMap.get("Project_Name"), "enter the " +dataMap.get("Project_Name") + " in the text box");

    	ExtentUtil.attachScreenshotOfPassedTestsInReport();

    	

    }
    

    @When("click on the {string} button")
    public void click_Add_tempalte(String buttonname) throws InterruptedException {
    
     scrollingToElementofAPage(ACS_locators.button_by_text(buttonname), "move to the " + buttonname);
     click(ACS_locators.button_by_text(buttonname), "click on the " + buttonname + "button"); 
     ExtentUtil.takeScreenshotAndAttachInReport();



    }

    @Then("user is able to see the alert message")
    public void verify_alert_message() throws InterruptedException {

    	
    	waitForVisible(ACS_locators.alert_message);
    	scrollingToElementofAPage(ACS_locators.alert_message,"move to alert messsage");
    	ExtentUtil.attachScreenshotOfPassedTestsInReport();

	String expected_message=getElementText(ACS_locators.alert_message);
    ExtentUtil.takeScreenshotAndAttachInReport();
    ExtentUtil.logger.get().log(Status.FAIL, HTMLReportUtil.failStringRedColor("Template is added successfully message is not present"));
    Assert.assertEquals("Tempalte is added successfully", getElementText(ACS_locators.alert_message));

    
    }

    @And("Search the template name")
    public void search_template() {
        inputText(ACS_locators.search_template, dataMap.get("Template_Name"), "search the " + dataMap.get("Template_Name"));
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }

    @When("click on the search button")
    public void click_search_button() throws InterruptedException {
        click(ACS_locators.search_button, "click on the search button");
        

    }


   @And("Select the {string} in the templates option")
   public void select_manage_Dropdown(String dropdown) throws InterruptedException {

        scrollingToElementofAPage(ACS_locators.template_manage_button(dataMap.get("Template_Name")), "move to " + dropdown);
        hoverOnElement(ACS_locators.template_manage_button(dataMap.get("Template_Name")));
        waitForVisible(ACS_locators.template_manage_button(dataMap.get("Template_Name")));
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
       click(ACS_locators.template_Manage_dropdowns(dataMap.get("Template_Name"),dropdown), "Select the " + dropdown + " option");
   }
    @And("Select the {string} option")
    public void select_manage_dropdown(String dropdown) throws InterruptedException {
    	 
    	scrollingToElementofAPage(ACS_locators.manage_button(dataMap.get("Project_Name")),"move to " +dropdown+ " option ");
    	hoverOnElement(ACS_locators.manage_button(dataMap.get("Project_Name")));
        waitForVisible(ACS_locators.Manage_dropdowns(dataMap.get("Project_Name"), dropdown));
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
        click(ACS_locators.Manage_dropdowns(dataMap.get("Project_Name"),dropdown), "Select the " + dropdown + " option");
        
    }

    @Then("user should be navigate to Edit template screen")
    public void verify_edit_template_screen() throws InterruptedException {
        Assert.assertTrue(isWebElementPresent(ACS_locators.Edit_Template_heading, "user is navigated to the edit template screen and able to see the heading " + getElementText(ACS_locators.Edit_Template_heading)));
        waitForVisible(ACS_locators.Edit_Template_heading);
        Thread.sleep(20000);
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }

    @And("enter the projects name")
    public void enter_Project_name() {
    	inputText(ACS_locators.enter_project_Name, dataMap.get("Project_Name"), "enter the " +dataMap.get("Project_Name"));
    }
    
    
    @When("fill details in edit template form")
	public void fillDetails_template() throws InterruptedException {
		scrollingToElementofAPage(ACS_locators.activityCardInstruction, "move to signin");
		if (!dataMap.get("Activity_Card_Instructions").isEmpty())
			inputText(ACS_locators.activityCardInstruction, dataMap.get("Activity_Card_Instructions"), "Adding activity card details");
		
		if (!dataMap.get("Mobile_ACS_Report").isEmpty())
			inputText(ACS_locators.mobileACSReport, dataMap.get("Mobile_ACS_Report"), "Adding mobile ACS details");

		if (!dataMap.get("Remote_ACS_Report").isEmpty())
			inputText(ACS_locators.remoteACSReport, dataMap.get("Remote_ACS_Report"), "Adding remote ACS details");
		ExtentUtil.attachScreenshotOfPassedTestsInReport();

	}
    
    @When("Select activity card options radio button")
	public void selectRadioBtnActivityCardOptions() throws InterruptedException {
		if (!dataMap.get("activityradioBtnText").isEmpty())
			waitForVisible(ACS_locators.activityCardOptions(dataMap.get("activityradioBtnText")));
			click(ACS_locators.activityCardOptions(dataMap.get("activityradioBtnText")), "select" + dataMap.get("activityradioBtnText") + " radio button");

		     waitForClickable(ACS_locators.activityCardOptions(dataMap.get("activityradioBtnText")));
		     waitForVisible(ACS_locators.activityCardOptions(dataMap.get("activityradioBtnText")));
		     Thread.sleep(4000);

		Thread.sleep(2000);

		ExtentUtil.attachScreenshotOfPassedTestsInReport();

	}
    
    @And("unselect checkboxes if checked in Activity card options")
	public void unselectCheckboxes() throws InterruptedException {
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        hoverOnElement(ACS_locators.allAvoutActivity);
        List<WebElement> selected_checkboxes=getListElements(ACS_locators.selected_checkboxes,"getting the unseleted checkbox");
        for (WebElement selectedcheckbox : selected_checkboxes) {
            js.executeScript("arguments[0].click();", selectedcheckbox);
        }

    }
    
    @And("select checkboxes in Activity card options")
   	public void selectCheckboxesInProjectSettings() throws InterruptedException {
    	JavascriptExecutor js = (JavascriptExecutor) getDriver();
  		String[] chkOptions = dataMap.get("CheckboxText").split(",");
 		System.out.println(chkOptions.length);

 		//Hovers on first element in the chkOptions array 
         hoverOnElement(ACS_locators.selectCheckbox(chkOptions[0]));
         List<WebElement> seleced_checkboxes=getListElements(ACS_locators.selected_checkboxes,"getting the number of checkboxes");
         System.out.println("the number of selected checkboxes are : " +seleced_checkboxes.size());

         for(WebElement checkbox:seleced_checkboxes) {
	         if (checkbox.isSelected()) {
	             js.executeScript("arguments[0].click();", checkbox);
	             System.out.println(checkbox.isSelected());
	         }
         }
		for(int i=0; i < chkOptions.length; i++) {
			Thread.sleep(2000);
			System.out.println(isWebElementVisibleWithoutLog(ACS_locators.selectCheckbox(chkOptions[i])));
			if(isWebElementVisibleWithoutLog(ACS_locators.selectCheckbox(chkOptions[i]))) {
				click(ACS_locators.selectCheckbox(chkOptions[i]), "select "+ chkOptions[i] +"checkbox");
			}
			Thread.sleep(2000);
		}        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }

    
    @Then("click on {string} button")
	public void updateBtn_template(String buttonname) throws InterruptedException {
		scrollingToElementofAPage(ACS_locators.button_by_text(buttonname), "clicking on update button");
    	ExtentUtil.attachScreenshotOfPassedTestsInReport();

		click(ACS_locators.button_by_text(buttonname), "clicking on update button");
		waitForVisible(ACS_locators.alert_message);
	
		scrollingToElementofAPage(ACS_locators.alert_message, "move to alert message");
		ExtentUtil.attachScreenshotOfPassedTestsInReport();
        Assert.assertTrue(isWebElementVisible(ACS_locators.alert_message, getElementText(ACS_locators.alert_message) + " message  is present"));

        waitForClickable(ACS_locators.Back_button);
        click(ACS_locators.Back_button,"click on the back butotn");
       
        

		

	}
    
    @And("Search the Project name")
	public void search_project() throws InterruptedException {
    	inputText(ACS_locators.search_project, dataMap.get("Project_Name"), "search the " +dataMap.get("Project_Name"));
        click(ACS_locators.search_button,"click on the search button");
        if(isWebElementPresent(ACS_locators.no_record_found,"no record found is present")){
           hoverOnElement(ACS_locators.enter_project_Name);
           inputText(ACS_locators.enter_project_Name,dataMap.get("Project_Name"),"enter the "+dataMap.get("Project_Name"+"in the search box"));
           click(ACS_locators.Add_project,"click on the add project");
            inputText(ACS_locators.search_project, dataMap.get("Project_Name"), "search the " +dataMap.get("Project_Name"));
            click(ACS_locators.search_button,"click on the search button");
        }
        else{
            System.out.println("text is present");
        }
        Thread.sleep(7000);
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
	
	@And("click on next button")
	public void click_next_button() throws InterruptedException {
		Boolean validationPassed=true;
	    int pageNumber=1;

	      while (true) {
	          // Wait for the results to load
	          WebDriverWait wait = new WebDriverWait(getDriver(), 7);

	          // Extract search results
	          List<WebElement> searchResults = getListElements(ACS_locators.search_results, "getting the searchresult");
	          scrollingToElementofAPage(ACS_locators.search_results, "Move to the Search Results");
	          for (int i = 0; i < searchResults.size(); i++) {
	        	  wait.until(ExpectedConditions.visibilityOfElementLocated(ACS_locators.search_results));
	              String title = searchResults.get(i).getText().trim();
	              System.out.println(title);
	              String Actual_results = dataMap.get("Project_Name");
	              System.out.println(Actual_results);
	              if (!title.equalsIgnoreCase(Actual_results)) {
	                  validationPassed = false;
	              }else {
	            	  validationPassed = true;
	            	  break;
	              }
	          }
	          
	          System.out.println(validationPassed);
	          // Report the validation status for the current page
	          if (validationPassed) {
	              System.out.println("Validation passed on page " + pageNumber + "!");
	              break;
	          } else {
	              System.out.println("Validation failed on page " + pageNumber + "!");
	              WebElement nextPageButton = getDriver().findElement(By.xpath("//a[text()=' Next ']"));
	              if (!nextPageButton.isEnabled()) {
	                  break;  // Exit the loop if there are no more pages
	              }
	              nextPageButton.click();
	              pageNumber++;
	              
	          }
	          ExtentUtil.attachScreenshotOfPassedTestsInReport();
	      }
	}
	
	@Then("user should be navigate to Edit project page")
	public void verify_edit_project_page() throws InterruptedException {
		Assert.assertTrue(isWebElementPresent(ACS_locators.Edit_Project_heading, "user is navigated to the edit project page and able to see the heading " 
		+ getElementText(ACS_locators.Edit_Project_heading)));
		Thread.sleep(10000);
		ExtentUtil.attachScreenshotOfPassedTestsInReport();
	}
		
	



	


    @Then("delete the template")
    public void tempalteteardown() throws InterruptedException {
        navigates_to_the_application();
        click_Signup();
        entercredentials();
        clickssignin();
        hover_admin();
        clicktemplates(" Templates ");
        search_template();
        click_search_button();
        ExtentUtil.takeScreenshotAndAttachInReport();
    	select_manage_Dropdown("Delete template");
        ExtentUtil.takeScreenshotAndAttachInReport();
    	click(ACS_locators.button_by_text(" Yes "),"click on the yes button");
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    	Thread.sleep(3000);
    	Assert.assertTrue(isWebElementVisible(ACS_locators.alert_message, getElementText(ACS_locators.alert_message) + " message  is present"));
        scrollingToElementofAPage(ACS_locators.alert_message, "move to alert message");
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
 }
    
    @Then("click on the sign out button")
    public void sign_out() throws InterruptedException {
    	click(ACS_locators.sign_out,"click on the signout button");
    	Thread.sleep(4000);
    	ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
    

    @Then("user is able to see the comfirmation alert message")
    public void verify_Alert_confirmation_message() throws InterruptedException {
    	waitForVisible(ACS_locators.alert_message);
    	scrollingToElementofAPage(ACS_locators.alert_message,"move to alert messsage");
    	ExtentUtil.attachScreenshotOfPassedTestsInReport();
        Assert.assertTrue(isWebElementVisible(ACS_locators.alert_message, getElementText(ACS_locators.alert_message) + " message  is present"));
       click_on_empty_space();
    }
    
    @Then("user is able to see the created project")
    public void verify_created_project() throws InterruptedException {
    	scrollingToElementofAPage(ACS_locators.search_results, "move to search results");
    	List<WebElement> project_list=getListElements(ACS_locators.search_results, "getting all the search results");
    	for(int i =0;i<project_list.size();i++) {
    		System.out.println("the project name is : " +project_list.get(i).getText());
    		if(project_list.get(i).getText().equalsIgnoreCase(dataMap.get("Project_Name"))) {
    			System.out.println("project is sucesfully created");
    			Assert.assertTrue(isWebElementVisible(ACS_locators.status_text(dataMap.get("Project_Name")), getElementText(ACS_locators.status_text(dataMap.get("Project_Name"))) + "  is present"));
    			Assert.assertTrue(isWebElementVisible(ACS_locators.Research_text(dataMap.get("Project_Name")), getElementText(ACS_locators.Research_text(dataMap.get("Project_Name"))) + "  is present"));
    			Assert.assertTrue(isWebElementVisible(ACS_locators.manage_dropdown(dataMap.get("Project_Name")), "manange dropdown is present"));
    			
    			hoverOnElement(ACS_locators.manage_dropdown(dataMap.get("Project_Name")));
    			waitForClickable(ACS_locators.manage_dropdown(dataMap.get("Project_Name")));
    			ExtentUtil.attachScreenshotOfPassedTestsInReport();
    		}
    		else {
    			System.out.println("project is not created");
    		}
    	}
    }

    
    @And("select an existing professional")
    public void select_existing_professional() throws InterruptedException {
    	scrollingToElementofAPage(ACS_locators.existing_professional(dataMap.get("Existing_Professional_Name")), "Move to the existing professional");
    	click(ACS_locators.existing_professional(dataMap.get("Existing_Professional_Name")), "Click on the existing professional: "+dataMap.get("Existing_Professional_Name"));
    	ExtentUtil.attachScreenshotOfPassedTestsInReport();
    	waitForClickable(ACS_locators.button_by_text("Submit"));
    	scrollingToElementofAPage(ACS_locators.button_by_text("Submit"), "Move to Submit button");
    	click(ACS_locators.button_by_text("Submit"), "Click on Submit button");
    	scrollingToElementofAPage(ACS_locators.alert_message, "move to alert messsage");
    	ExtentUtil.attachScreenshotOfPassedTestsInReport();
    	String expected_message=getElementText(ACS_locators.alert_message);
    	Assert.assertEquals("Professional is added successfully.", expected_message);
    }
    
    @And("select existing professional as admin")
    public void select_existing_professional_as_admin() throws InterruptedException {
    	JavascriptExecutor js = (JavascriptExecutor) getDriver();
        List<WebElement> seleced_checkboxes=getListElements(ACS_locators.selected_checkboxes,"getting the number of checked checkboxes");

        for(WebElement checkbox:seleced_checkboxes) {
	         if (checkbox.isSelected()) {
	         	scrollingToElementofAPage(ACS_locators.selected_checkboxes, "Move to selected user to unselect");
	             js.executeScript("arguments[0].click();", checkbox);
	         }
        }
        List<WebElement> existing_professionals_list=getListElements(ACS_locators.existing_professionals,"getting the list of existing professionals");
        for(WebElement user_professionals:existing_professionals_list) {
        	if(user_professionals.getText().equalsIgnoreCase(dataMap.get("Existing_Professional_Name"))) {
                scrollingToElementofAPage(ACS_locators.selectProfessionalUserAdminCheckbox(user_professionals.getText()), "Move to unselected user to select");
            	click(ACS_locators.selectProfessionalUserAdminCheckbox(user_professionals.getText()), "select "+ user_professionals.getText() +" as project admin");
        	}
        }
        Thread.sleep(500);
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
        waitForVisible(ACS_locators.alert_message);
    	scrollingToElementofAPage(ACS_locators.alert_message, "move to alert messsage");
    	ExtentUtil.attachScreenshotOfPassedTestsInReport();
    	String expected_message=getElementText(ACS_locators.alert_message);
    	Assert.assertEquals("Professional Admin status is updated successfully.", expected_message);
    	click(ACS_locators.alert_message, "click on alert message");

    }


    @And("hover on the navbar-right header")
    public void navbar_right() throws InterruptedException {
       waitForVisible(ACS_locators.right_header);
        scrollingToElementofAPage(ACS_locators.right_header, "move to admin name");
        click(ACS_locators.right_header, "click on the admin name");
}

      
    @And("click the Manage Professional option")
    public void Click_Manage_Professional() throws InterruptedException {
    	waitForVisible(ACS_locators.Manage_Professional);
        click(ACS_locators.Manage_Professional, "click on the Manage Professional option");
        Thread.sleep(5000);
        
        
}
    @And("Select A {string} option")
    public void select_Professional_dropdown(String Professional ) throws InterruptedException {
    	waitForClickable(ACS_locators.ManageProfessional_dropdown(Professional));
    	click(ACS_locators.ManageProfessional_dropdown(Professional),"click on the Add new Professional option");
    	
    	ExtentUtil.attachScreenshotOfPassedTestsInReport();
    	
    }
    @Then("User enter the Firstname and Lastname and Emailaddress")
    public void enterthefristname() {

    inputText(ACS_locators.First_name, dataMap.get("First name"), "enter the First name");
    inputText(ACS_locators.Last_name, dataMap.get("Last name"), "enter the Last name");
    inputText(ACS_locators.Email_address, dataMap.get("Email address"), "enter the Email address");
    ExtentUtil.attachScreenshotOfPassedTestsInReport();
    
    }
    @Then("Click on the submit") 
    public void click_on_submit() throws InterruptedException {
   click(ACS_locators.Submit_button, "click on the submit in button");
    //Thread.sleep(7000);   
    waitForVisible(ACS_locators.alert_message);	
	ExtentUtil.attachScreenshotOfPassedTestsInReport();	
    Assert.assertTrue(isWebElementVisible(ACS_locators.alert_message, getElementText(ACS_locators.alert_message) + " message  is present"));
   // click_on_empty_space();
    }
    @Then("Check the Admin box")
    public void click_on_adminbox() throws InterruptedException {
   click(ACS_locators.admin_box,"Check the Admin box");	
   Thread.sleep(7000);
   waitForVisible(ACS_locators.alert_message);
   Assert.assertTrue(isWebElementVisible(ACS_locators.alert_message, getElementText(ACS_locators.alert_message) + " message  is present"));
   ExtentUtil.attachScreenshotOfPassedTestsInReport();
   
   
   	
    	
    	
    }
    
    @And("select project template setting")
    public void select_projecttemplate_setting() throws InterruptedException {
    	       waitForPresent(ACS_locators.select_project_template_setting);
    	       waitForClickable(ACS_locators.select_project_template_setting);
    	       Thread.sleep(5000);
    	       click(ACS_locators.select_project_template_setting,"click on the project setting tempalte dropdown");
              selectByVisibleText(ACS_locators.select_project_template_setting, dataMap.get("Template_Name"), "selecting project setting template value");
              waitForVisible(ACS_locators.select_project_template_setting);
              Thread.sleep(10000);
              ExtentUtil.attachScreenshotOfPassedTestsInReport();
}

    @Then ("user should be navigate to edit project screen")
    public void verify_edit_project_screen() throws InterruptedException {
        Assert.assertTrue(isWebElementPresent(ACS_locators.Edit_Project, "user is navigated to the edit project screen and able to see the heading " + getElementText(ACS_locators.Edit_Project)));
        waitForVisible(ACS_locators.Edit_Project);
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
 
    
}




