package step_definitions;

import com.Buffer.BufferUtilSuiteLevel;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.Status;
import com.opencsv.exceptions.CsvException;

import io.cucumber.datatable.DataTable;
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

import static org.testng.Assert.assertEquals;

import java.awt.Checkbox;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import org.testng.Assert;

public class ACS_steps extends KeywordUtil {
	static Random random = new Random(); 
    static int random_number=random.nextInt(500);

    public static HashMap<String, String> dataMap = new HashMap<String, String>();
    public static String project_name="";

    @Given("Read the testdata {string} and {string} from excel file")
    public void readTheTestdataFromExcelFile(String arg1, String arg2) {
        dataMap = ExcelDataUtil.getTestDataWithTestCaseID(arg2, arg1);
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
    	Thread.sleep(3000);
    	click_on_empty_space();
       waitForVisible(ACS_locators.admin_name);
       waitForClickable(ACS_locators.admin_name);
        scrollingToElementofAPage(ACS_locators.admin_name, "move to admin name");
        click(ACS_locators.admin_name, "click on the admin name");
    }

    @And("click on the {string} option")
    public void clicktemplates(String dropdownname) throws InterruptedException {
    	waitForVisible(ACS_locators.dropdown_buttons(dropdownname));
    	 waitForClickable(ACS_locators.dropdown_buttons(dropdownname));
         click(ACS_locators.dropdown_buttons(dropdownname), "click on the " + dropdownname + " option");
         ExtentUtil.attachScreenshotOfPassedTestsInReport();
      
    }

    @And("enter the template name")
    public void enter_template_name() throws InterruptedException {
        inputText(ACS_locators.enter_tempalte_name, dataMap.get("Template_Name"), "enter the " + dataMap.get("Template_Name") + " in the text box");
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
    
    @And("Enter the project Name")
    public void enter_project_name() throws InterruptedException {
    	clearInput(ACS_locators.enter_project_Name);
        Thread.sleep(6000);                         
        inputText(ACS_locators.enter_project_Name, dataMap.get("Project_Name")+random_number, "enter the " +dataMap.get("Project_Name")+random_number + " in the text box");
        ExcelDataUtil.putTestData("ACS", dataMap.get("Project_Name")+random_number, "Testdata9", 10);
        ExcelDataUtil.putTestData("ACS", dataMap.get("Project_Name")+random_number, "Testdata27", 10);
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
    

    @When("click on the {string} button")
    public void click_Add_tempalte(String buttonname) throws InterruptedException {
    
     scrollingToElementofAPage(ACS_locators.button_by_text(buttonname), "move to the " + buttonname);
     waitForVisible(ACS_locators.button_by_text(buttonname));
     ExtentUtil.takeScreenshotAndAttachInReport();
     click(ACS_locators.button_by_text(buttonname), "click on the " + buttonname + "button");
     Thread.sleep(6000);
     click_on_empty_space();
    
}

    @Then("user is able to see the alert message")
    public void verify_alert_message() throws InterruptedException {

    	
    	waitForVisible(ACS_locators.alert_message);
    	scrollingToElementofAPage(ACS_locators.alert_message,"move to alert messsage");
    	ExtentUtil.takeScreenshotAndAttachInReport();
        String expected_message=getElementText(ACS_locators.alert_message);
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
    	clearInput(ACS_locators.search_project);
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
        waitForVisible(ACS_locators.alert_message);
        scrollingToElementofAPage(ACS_locators.alert_message, "move to alert message");
        Assert.assertTrue(isWebElementVisible(ACS_locators.alert_message, getElementText(ACS_locators.alert_message) + " message  is present"));
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
    		   	JavascriptExecutor js = (JavascriptExecutor) getDriver();
    	    	List<WebElement> existing_professionals=getListElements(ACS_locators.existing_professional(dataMap.get("Existing_Professional_Name")), "Get all the existing professionals with the same professional name");
    	    	for(WebElement user_professionals:existing_professionals) {
    	        	scrollingToElementofAPage(ACS_locators.existing_professional(user_professionals.getText()), "Move to the existing professional");
    	        	js.executeScript("arguments[0].click();", user_professionals);
    	    	}
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
    	List<WebElement> existing_professionals_list=getListElements(ACS_locators.existing_professionals,"getting the list of existing professionals");
        for(WebElement user_professionals:existing_professionals_list) {
        	System.out.println(user_professionals.getText());
        	if(user_professionals.getText().equalsIgnoreCase(dataMap.get("professional_username"))) {
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
    
    @When("user enetrs professional username and password")
    public void enter_professional_username_password(){
    	  inputText(ACS_locators.enter_username, dataMap.get("professional_username"), "enter the username");
          inputText(ACS_locators.enter_password, dataMap.get("professional_password"), "enter the password");
          ExtentUtil.attachScreenshotOfPassedTestsInReport();
    	
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
    	click_on_empty_space();
    	
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
    
    @When("user enters the {string} and {string}")
    public void enter_username_password(String username, String password){
        inputText(ACS_locators.enter_username, dataMap.get(username), "enter the " +dataMap.get(username));
        inputText(ACS_locators.enter_password, dataMap.get(password), "enter the " +dataMap.get(password));
        ExtentUtil.attachScreenshotOfPassedTestsInReport();

    }
    
    @And("clicks {string} button")
    public void deactivate(String button) throws InterruptedException {
      waitForVisible(ACS_locators.activate_button(dataMap.get("Professional_username"),button));
      scrollingToElementofAPage(ACS_locators.activate_button(dataMap.get("Professional_username"),button),"Move to the  " +button);
      ExtentUtil.attachScreenshotOfPassedTestsInReport();
      click(ACS_locators.activate_button(dataMap.get("Professional_username"),button),"click on the " +button);
    }
    
    @Then("user get teh error message")
    public void error_message() throws InterruptedException {
        waitForVisible(ACS_locators.alert_message);
        scrollingToElementofAPage(ACS_locators.alert_message, "move to alert message");
        String text=getElementText(ACS_locators.alert_message);
        System.out.println("the text is : " +text);
        ExtentUtil.logger.get().log(Status.PASS, HTMLReportUtil.passStringGreenColor(text +"is present"));
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
    
    @Then("user is not able to see the error message")
    public void not_able_tosee_error_message() throws InterruptedException {
        waitForVisible(ACS_locators.alert_message);
        scrollingToElementofAPage(ACS_locators.alert_message, "move to alert message");
        String text=getElementText(ACS_locators.alert_message);
        System.out.println("the text is : " +text);
        ExtentUtil.logger.get().log(Status.FAIL, HTMLReportUtil.failStringRedColor(text +"is present. Customer Admin account gets deactivated by Project Admin."));

        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
    
    @Then("verify the status of {string} button")
    public void verify_status(String button) throws InterruptedException{
    	scrollingToElementofAPage(ACS_locators.activate_button(dataMap.get("Professional_username"),button),"move to the button");
    	ExtentUtil.attachScreenshotOfPassedTestsInReport();
        String text=getElementText(ACS_locators.activate_button(dataMap.get("Professional_username"),button));
        System.out.println("the status is : " +text);
        ExtentUtil.logger.get().log(Status.PASS, HTMLReportUtil.passStringGreenColor("The status of button is : " +text) );
        Assert.assertEquals("Edit/Activate",text);
        click_on_empty_space();

    }
    
    @Then("user is able to login successfully and see the user name")
    public void login_Successfully(){
        Assert.assertTrue(isWebElementVisible(ACS_locators.admin_name, getElementText(ACS_locators.admin_name)+ " is present"));
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
    
    @Then("user is not able to see the expected message")
    public void verify_message() throws InterruptedException {
    	 waitForVisible(ACS_locators.alert_message);
         scrollingToElementofAPage(ACS_locators.alert_message, "move to alert message");
         String text=getElementText(ACS_locators.alert_message);
         System.out.println("the text is : " +text);
         String Actual_text="Account is inactive.Please contanct to Org admin.";
       ExtentUtil.logger.get().log(Status.FAIL, HTMLReportUtil.failStringRedColor("expected text :" +text +"\nActual text : " +Actual_text));
         ExtentUtil.attachScreenshotOfPassedTestsInReport();
        Assert.assertEquals("Account is inactive.Please contanct to Org admin.", text);
    	
      }
    
    @And("Enter the project Name {string} in {string}")
    public void enter_project_name(String records, String sheetName) throws InterruptedException {
    	String[] arr = records.split(":");
    	int col = Integer.parseInt(arr[0]);
    	String[] rows = arr[1].split(",");
    	clearInput(ACS_locators.enter_project_Name);
        Thread.sleep(6000);                         
        inputText(ACS_locators.enter_project_Name, dataMap.get("Project_Name")+random_number, "enter the " +dataMap.get("Project_Name")+random_number + " in the text box");
		for(int i=0; i < rows.length; i++) {
			ExcelDataUtil.putTestData(sheetName, dataMap.get("Project_Name")+random_number, rows[i], col);
		}
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
    
    @And("check if the user professional exists")
    public void verify_user_professional_exists() throws InterruptedException {
    scrollingToElementofAPage(ACS_locators.existing_professional(dataMap.get("Existing_Professional_Name")), "Move to the existing professional");
    ExtentUtil.logger.get().log(Status.FAIL, HTMLReportUtil.failStringRedColor(dataMap.get("Existing_Professional_Name") + " profesional still  exists!"));

   	Assert.assertFalse(isWebElementVisibleWithoutLog(ACS_locators.existing_professional(dataMap.get("Existing_Professional_Name"))));
    }

    @And("check if {string} button exists")
    public void verify_button_text(String btnText) throws InterruptedException {
 	scrollingToElementofAPage(ACS_locators.activate_button(dataMap.get("Professional_username"), btnText), "Move to the Edit/Deactivate button");
    	Assert.assertTrue(isWebElementVisibleWithoutLog(ACS_locators.activate_button(dataMap.get("Professional_username"), btnText)));
    }
    
    @Then("user sees error message of invalid login")
    public void verify_invalid_login_message() throws InterruptedException {
    	scrollingToElementofAPage(ACS_locators.alert_message, "Move to the error message");
//    	Assert.assertTrue(isWebElementVisibleWithoutLog(null));
    	Assert.assertFalse(isWebElementVisibleWithoutLog(ACS_locators.admin_name));
    }
    
    @Then("user should see the updated status succesful")
    public void verify_update_status_success_message() throws InterruptedException {
		String expected_message=getElementText(ACS_locators.alert_message);
		System.out.println("the expectd message is "+expected_message );
	    ExtentUtil.takeScreenshotAndAttachInReport();
	    Assert.assertEquals("Professional status is updated successfully.", getElementText(ACS_locators.alert_message));
	    click_on_empty_space();
    }
    
    @And("search the newly added project")
    public void search_new_project() throws InterruptedException {
        System.out.println("the sreching project name is : " +project_name);
        clearInput(ACS_locators.search_project);
        inputText(ACS_locators.search_project, project_name, "search the " +project_name);
        click(ACS_locators.search_button,"click on the search button");
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
    
    @And("Select the {string} option of newly added project")
    public void select_manage_dropdown_new_project(String dropdown) throws InterruptedException {
        scrollingToElementofAPage(ACS_locators.manage_button(project_name),"move to " +dropdown+ " option ");
        hoverOnElement(ACS_locators.manage_button(project_name));
        waitForVisible(ACS_locators.Manage_dropdowns(project_name, dropdown));
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
        click(ACS_locators.Manage_dropdowns(project_name,dropdown), "Select the " + dropdown + " option");

    }
    
    @And("Enter the  new project Name {string} in {string}")
    public void enter_new_project(String records, String sheetName) throws InterruptedException{
        project_name=dataMap.get("Project_Name")+random_number;
//        System.out.println("the new project is " +project_name);
    	String[] arr = records.split(":");
    	int col = Integer.parseInt(arr[0]);
    	String[] rows = arr[1].split(",");
    	clearInput(ACS_locators.enter_project_Name);
        Thread.sleep(6000);
        inputText(ACS_locators.enter_project_Name, project_name, "enter the " +dataMap.get("Project_Name")+random_number + " in the text box");
        for(int i=0; i < rows.length; i++) {
        	ExcelDataUtil.putTestData(sheetName, project_name, rows[i], col);
        }
    }
    @And("user clicks on {string} link")
    public void userClicksOnLink(String link) throws InterruptedException {
        scrollingToElementofAPage(ACS_locators.footerLinks(link), "Scrolling to the link: " + link);
        click(ACS_locators.footerLinks(link), "click on the link: " + link);
    }

    @Then("{string} page is displayed")
    public void pageIsDisplayed(String page) {
        waitForVisible(ACS_locators.pageHeading(page));
        ExtentUtil.attachScreenshotOfPassedTestsInReport();
    }
   @Then("User click on the editDeactivate button")
     public void Userclick_deactivate() throws InterruptedException {
	   click(ACS_locators.User_Deactivate(dataMap.get("Professional_username")),"click on the edit deactivate button");
	   scrollingToElementofAPage(ACS_locators.moveto_cancelbutton,"Move to the  message");
	   ExtentUtil.attachScreenshotOfPassedTestsInReport();
	 
	 	 	
   }
   
   
   @When("User verify {string} button is not displayed")
   public void verify_deactivate_button(String buttonName) throws InterruptedException {  

  Assert.assertTrue(isWebElementPresent(ACS_locators.button_contains_text(buttonName),"Deactivate button is not present"));
	 


   }
   
   @Then("verify if the professional is selected as project admin")
   public void verify_if_professional_is_admin() throws Exception {
   	waitForVisible(ACS_locators.verify_project_admin_checkbox_checked(dataMap.get("Project_Admin_username")));
   	WebElement project_admin = getWebElement(ACS_locators.verify_project_admin_checkbox_checked(dataMap.get("Project_Admin_username")));
   	if(project_admin.isSelected()) {
   		Assert.assertTrue(project_admin.isSelected(), "The professional user isn't selected as project admin!");
   	}
   }
   
   @Then("verify if the project is listed")
   public void verify_if_project_listed() {
   	try {
			WebElement proj_name = getWebElement(ACS_locators.search_results);
//			Assert.assertEquals(proj_name, dataMap.get("Project_Name"));
			if(proj_name.getText().equalsIgnoreCase(dataMap.get("Project_Name"))) {
				System.out.println("Project name matches!");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
   } 
   
   @And("Select the project from the dropdown")
   public void select_project_from_dropdown() throws InterruptedException {
	   waitForVisible(ACS_locators.select_project_participant);
       hoverOnElement(ACS_locators.select_project_participant);
      
       click(ACS_locators.select_project_participant,"select the project from the dropdown");
       selectByVisibleText(ACS_locators.select_project_participant,dataMap.get("Project_Name"),"select the  " +dataMap.get("Project_Name")+ " value in the dropdown");

   }
   @And("click on the {string} link button")
   public void click_link(String linkname) throws InterruptedException {
       waitForVisible(ACS_locators.click_link(linkname));
       click(ACS_locators.click_link(linkname) , "click on the " +linkname);
       Thread.sleep(20000);
   }
   
   @And("enter the  {string} in the field")
   public void enter_details_in_input_fields(String field_name) throws InterruptedException {
       inputText(ACS_locators.enter_input_details(field_name),dataMap.get(field_name),"enter the " + dataMap.get(field_name) + " in the "+field_name);

}
   
   @And("select the date_of_Birth")
   public void select_date_of_birth() throws InterruptedException {
       String date_of_birth=dataMap.get("Date_of_birth");
       String[] date=date_of_birth.split("/");
       String month=date[1];
       String year=date[2];
       String day=date[0];
       waitForVisible(ACS_locators.select_year);
       click(ACS_locators.select_year,"click on the select year dropdown");
       selectByVisibleText(ACS_locators.select_year,year,"select the year");
       waitForVisible(ACS_locators.select_month);
       click(ACS_locators.select_month,"click on the select month dropdown");
       selectByVisibleText(ACS_locators.select_month,month,"select the month");
       waitForVisible(ACS_locators.select_day);
       click(ACS_locators.select_day,"click on select day dropdown");
       selectByVisibleText(ACS_locators.select_day,day,"select the day");
       Thread.sleep(4000);
       ExtentUtil.attachScreenshotOfPassedTestsInReport();
   }

   @And("select the gender")
   public void select_gender() throws InterruptedException {
    waitForVisible(ACS_locators.select_gender);
    click(ACS_locators.select_gender,"click on the select gender option");
    selectByVisibleText(ACS_locators.select_gender,dataMap.get("Gender"),"select the " +dataMap.get("Gender")+ "in the dropdown");


   }
   
   @Then("verify that {string} button is present")
   public void verify_manage_Acs_button(String buttonmae){
       ExtentUtil.attachScreenshotOfPassedTestsInReport();
       waitForVisible(ACS_locators.button_by_text(buttonmae));
       Assert.assertTrue(isWebElementVisible(ACS_locators.button_by_text(buttonmae), buttonmae+" is present"));
       ExtentUtil.attachScreenshotOfPassedTestsInReport();

}
   @And("enter the first and last name")
   public void enter_first_name(){
       inputText(ACS_locators.participant_first_name,dataMap.get("First name"),"enter the " +dataMap.get("First name")+ " in the first name");
       inputText(ACS_locators.participant_last_name,dataMap.get("Last name"),"enter the " +dataMap.get("Last name")+ " in the Last name");
}

@Then("verify the participant is visible")
   public void verify_participant(){
       List<WebElement> participant=getListElements(ACS_locators.participant_result,"getting the participant result");
   System.out.println("the number of patrticipant is : " +participant.size());
   String name= dataMap.get("First name")  + " " +dataMap.get("Last name");
   Assert.assertEquals(getElementText(ACS_locators.participant_full_name),name);
   Assert.assertEquals(getElementText(ACS_locators.paticipant_id),dataMap.get("Participant ID"));
   ExtentUtil.attachScreenshotOfPassedTestsInReport();
}

@Then("verify that {string} is present")
public void verify_expoprt_data(String dropdown) throws InterruptedException {
scrollingToElementofAPage(ACS_locators.manage_button(dataMap.get("Project_Name")),"move to " +dropdown+ " option ");
hoverOnElement(ACS_locators.manage_button(dataMap.get("Project_Name")));
waitForVisible(ACS_locators.Manage_dropdowns(dataMap.get("Project_Name"), dropdown));
Assert.assertTrue(isWebElementVisible(ACS_locators.Manage_dropdowns(dataMap.get("Project_Name"), dropdown),  dropdown +" is present"));
ExtentUtil.attachScreenshotOfPassedTestsInReport();





}


@Then("verify the zip file")
public void verify_zip() throws IOException, InterruptedException {
    extractZipFile();
    Thread.sleep(5000);
ExtentUtil.logger.get().log(Status.PASS, HTMLReportUtil.passStringGreenColor( "zip file has downloaded successfully"));


}

@Then("verify the file name present in zip folder")
public void verify_zip_file(){
    verifyfile();
}

@Then("verify the pending Acs score is blank")
public void verify_pending_Acs() {
    List<WebElement> participant = getListElements(ACS_locators.participant_result, "getting the participant result");
    System.out.println("the number of patrticipant is : " + participant.size());
    Assert.assertEquals(getElementText(ACS_locators.pending_Acs), "");
    ExtentUtil.attachScreenshotOfPassedTestsInReport();
}

@Then("verify the project status")
public void verify_project_status() throws InterruptedException {
    scrollingToElementofAPage(ACS_locators.search_results, "move to search results");

    Assert.assertTrue(isWebElementVisible(ACS_locators.status_text(dataMap.get("Project_Name")), getElementText(ACS_locators.status_text(dataMap.get("Project_Name"))) + "  is present"));
    ExtentUtil.attachScreenshotOfPassedTestsInReport();

}
@Then("Click back button top from the browser")
public void click_back_from_the_browser() throws InterruptedException {
    Thread.sleep(4000);
    GlobalUtil.clickbackbutton();

}

@And("Search with first name")
public void search_participant()  {
    inputText(ACS_locators.find_Participant_first_Name(),dataMap.get("First name"),"enter the " + dataMap.get("First name") + " in the first name field");


}
@Then ("click on participant search button")
public void click_search()  {
    click(ACS_locators.participant_search, "click on the search button");

}
@And("Select the view {string} option")
public void select_view_dropdown(String dropdown) throws InterruptedException {
    scrollingToElementofAPage(ACS_locators.view_button(dataMap.get("First name")),"move to " +dropdown+ " option ");
    hoverOnElement(ACS_locators.view_button(dataMap.get("First name")));
    waitForVisible(ACS_locators.view_dropdowns(dataMap.get("First name"), dropdown));
    ExtentUtil.attachScreenshotOfPassedTestsInReport();
    click(ACS_locators.view_dropdowns(dataMap.get("First name"),dropdown), "Select the " + dropdown + " option");
    Thread.sleep(10000);

}

@And("click on the Manage ACS option")
public void Click_Manage_ACS() throws InterruptedException {
    waitForVisible(ACS_locators.Manage_ACS);
    click(ACS_locators.Manage_ACS, "click on the Manage ACS option");
    Thread.sleep(5000);
}


@And("Select the acs {string} option")
public void select_Manage_ACS_dropdown(String ACS ) throws InterruptedException {
    waitForClickable(ACS_locators.ManageACS_dropdown(ACS));
    click(ACS_locators.ManageACS_dropdown(ACS),"click on the ACS option");
    waitForVisible(ACS_locators.alert_message);
    ExtentUtil.attachScreenshotOfPassedTestsInReport();
    click_on_empty_space();

}
@Then("click on Begin ACS button")
public void click_on_begin_acs_button() throws InterruptedException {
click(ACS_locators.click_on_BeginACS,"click on the Begin acs button");
Thread.sleep(4000);
ExtentUtil.attachScreenshotOfPassedTestsInReport();
}
@And("hover on the view button")
public void click_view() throws InterruptedException {
    scrollingToElementofAPage(ACS_locators.participant_view_button(dataMap.get("participant_name")),"move to element");
    hoverOnElement(ACS_locators.participant_view_button(dataMap.get("participant_name")));
}
@And("click on participantsACS option")
public void click(){
    click(ACS_locators.participant_Acs(dataMap.get("participant_name")),"click on the participants ACS");
}
@Then("Validating all the global values")
public void all_details() throws IOException, CsvException, InterruptedException {
    scrollingToElementofAPage(ACS_locators.global_values,"move to elements");
 
    List<WebElement> get_all_global_values=getListElements(ACS_locators.global_values,"getting all the global values");

    for(int i = 0;i<get_all_global_values.size();i++){

        String Global_values=get_all_global_values.get(i).getText();

     ExcelDataUtil.read_all_data(dataMap.get("participant_name"),"acs32-scores.csv", Global_values);
    }

   
}

@Then("Validating all the Instrumental values")
public void validating_excel_values() throws IOException, CsvException {
    List<WebElement> get_all_instrumental_values=getListElements(ACS_locators.Instrumenal_values,"getting all teh instrumental values");
    for(int i = 0;i<get_all_instrumental_values.size();i++){
        String instrumental_values=get_all_instrumental_values.get(i).getText();
        ExcelDataUtil.read_all_data(dataMap.get("participant_name"),"acs32-scores.csv",instrumental_values);
    }

}

@Then("validating all the leisure values")
public void validating_leisure_values() throws IOException, CsvException {
    List<WebElement> get_all_leisure_values=getListElements(ACS_locators.Lesiure_values,"getting all teh leisure values values");
    for(int i = 0;i<get_all_leisure_values.size();i++){
       String lesiure_values=get_all_leisure_values.get(i).getText();
       ExcelDataUtil.read_all_data(dataMap.get("participant_name"),"acs32-scores.csv",lesiure_values);
    }
}

@Then("validating all the fitness values")
public void validating_fitness_values() throws IOException, CsvException {
    List<WebElement> get_all_fitness_values=getListElements(ACS_locators.Fitness_values,"getting all teh fitness values");
    for(int i = 0;i<get_all_fitness_values.size();i++){
        String fitness_values=get_all_fitness_values.get(i).getText();
        ExcelDataUtil.read_all_data(dataMap.get("participant_name"),"acs32-scores.csv",fitness_values);
    }
}

@Then("validating all the social values")
public void validaing_social_values() throws IOException, CsvException {
    List<WebElement> get_all_social_values=getListElements(ACS_locators.Social_values,"getting all teh Social values");
    for(int i = 0;i<get_all_social_values.size();i++){
        String fitness_values=get_all_social_values.get(i).getText();
        ExcelDataUtil.read_all_data(dataMap.get("participant_name"),"acs32-scores.csv",fitness_values);
    }
}
@And("verify the project status {string}")

public void verify_project_status(String projectstatus) throws Exception {

scrollingToElementofAPage(ACS_locators.project_status, "Moving to project status to verify");

Assert.assertEquals(projectstatus, getWebElement(ACS_locators.project_status).getText());

}

 

@Then("check the participant acs status")

public void check_participant_acs_status() throws Exception {

scrollingToElementofAPage(ACS_locators.participant_acs_status, "Moving to participant ACS status to verify");

Assert.assertEquals("Y", getWebElement(ACS_locators.participant_acs_status).getText());

}


@Given("user navigates to the URL")

    public void navigates_to_URL() {

        navigateToUrl(dataMap.get("URL1"));

        ExtentUtil.attachScreenshotOfPassedTestsInReport();
}



    @And("enter the email and submit")

    public void enterthe_emailaddress() throws InterruptedException {

        inputText(ACS_locators.enter_emailname, dataMap.get("Emailname"),

                "enter the " + dataMap.get("Emailname") + " Enter the email adders");

        click(ACS_locators.click_on_next, "click on the next after enter email adders");

    }
    
    
    @And("User clicks on complete assessment button")

    public void userClicksOnCompleteAssessmentButton() {

        switchToFrame("ifmail");

        click(ACS_locators.click_on_complete_assessment_button, "click on the complete assessment button in email");

        switchToDefaultFrame();

    }
    
    @Then("select the options to the questions")

    public void select_the_physical_function() {

        List<WebElement> options = getListElements(ACS_locators.Questions_option_selection,

                "click on the Begin acs button");

        for (int i = 1; i <= options.size(); i++) {

            click(ACS_locators.select_questionOption(i), "Selection response to questions");

 

        }

        click(ACS_locators.click_on_nextbutton, "click on the next button after completed Qustions");

 

    }
    
    @Then("{string} page is display")

    public void pageIsDisplay(String page) {

 

        waitForVisible(ACS_locators.pageHeading(page));

        ExtentUtil.attachScreenshotOfPassedTestsInReport();

 

    }
    
    @Then("click on exit button")

    public void click_on_exit_button() {

        click(ACS_locators.click_on_exitbutton, "click on the exit after click on START ACS");

    }
    
    @Then("click on ACS {string} button")

    public void click_on_begin_acs_button(String acsabtton) throws InterruptedException {

        Thread.sleep(2000);

        ExtentUtil.attachScreenshotOfPassedTestsInReport();

        click(ACS_locators.click_on_ACSButtons(acsabtton), "click on the" + acsabtton + "button");

    }
    @And("click on the testcase option")

    public void Click_on_testcase() throws InterruptedException {

        waitForVisible(ACS_locators.select_testcase);

        click(ACS_locators.select_testcase, "click on testcase dropdwon option");

        Thread.sleep(5000);

    }
    @And("Select the testcase {string} option")

    public void select_testcase_dropdown(String ACS) throws InterruptedException {

        waitForClickable(ACS_locators.selecttestcase_dropdown(ACS));

        click(ACS_locators.selecttestcase_dropdown(ACS), "Select the testcase option");

        ExtentUtil.attachScreenshotOfPassedTestsInReport();

 

    }
    @Then("select the tiles")

    public void select_the_tiles() {

        for (int i = 0; i < 5; i++) {

            List<WebElement> tiles = getListElements(ACS_locators.selectthe_tiles, "select the any tile");

            for (int j = 0; j < tiles.size(); i++) {

                tiles.get(getRamdomInteger(0, tiles.size())).click();

                click(ACS_locators.click_on_nextbutton,

                        "click on the next button after completed the Qustions. Page: " + i + 1);

                tiles = getListElements(ACS_locators.selectthe_tiles, "select the any tile");

 

            }

 

        }

    }
    
    @And("Select the Activities {string} checkbox")

    public void select_Activities_checkbox(String checkbox) throws InterruptedException {

        waitForClickable(ACS_locators.select_ActivitiesOption(checkbox));

        click(ACS_locators.select_ActivitiesOption(checkbox), "Select the Activitie check box");

        click(ACS_locators.click_on_nextbutton, "click on the next button after completed the Qustions");

 

    }

 
  @Then("Activities current values match")

    public void activitiesCurrentValuesMatch(DataTable dataTable) {

        ArrayList<String> activities = new ArrayList<>(dataTable.asList());

        String actValue;

        String expValue;

        for (int i = 0; i < activities.size(); i++) {

            String actName = activities.get(i);

            expValue = dataMap.get(actName);

            if (actName.equalsIgnoreCase("Global")) {

                actValue = getElementText(ACS_locators.activityCurrentValueGlobal(activities.get(i)));

            } else {

                actValue = getElementText(ACS_locators.activityCurrentValue(activities.get(i)));

            }

            System.out.println(actName + "_Actual: " + actValue);

            System.out.println(actName + "_Expected: " + expValue);

            if (actValue.equalsIgnoreCase((expValue))) {

                ExtentUtil.logger.get().log(Status.PASS, HTMLReportUtil.passStringGreenColor(

                        "Activity values match: Expected: " + expValue + " | Actual: " + actValue));

            } else {

                ExtentUtil.logger.get().log(Status.FAIL, HTMLReportUtil.failStringRedColor(

                        "Activity values mismatch: Expected: " + expValue + " | Actual: " + actValue));

            }

            ExtentUtil.takeScreenshotAndAttachInReport();

 

        }

        

    }   

 



@Then("selectweb options to the questions")

 

    public void webselect_the_physical_function() {

 

        List<WebElement> options = getListElements(ACS_locators.webquestions_option_selection,

 

                "select the questions");

 

        for (int i = 1; i <= options.size(); i++) {

 

            click(ACS_locators.selectweb_questionOption(i), "select the response to questions");

 

 

        }

 

        click(ACS_locators.click_on_nextbutton, "click on the next button after completed Qustions");

 

 

    }

}

 









