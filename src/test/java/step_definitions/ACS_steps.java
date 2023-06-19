package step_definitions;



import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.zh_cn.假如;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import pageobjects.ACS_locators;
import utilities.*;

import java.util.HashMap;
import java.util.List;

import org.testng.Assert;

import static org.codehaus.groovy.runtime.InvokerHelper.getAttribute;


public class ACS_steps extends KeywordUtil {

    public static HashMap<String, String> dataMap = new HashMap<String, String>();


    @Given("Read the testdata {string} from excel file")
    public void readTheTestdataFromExcelFile(String arg1) {
        dataMap = ExcelDataUtil.getTestDataWithTestCaseID("ACS", arg1);

    }

    @Given("user navigates to the application")
    public void navigates_to_the_application() {
        navigateToUrl(dataMap.get("URL"));
    }

    @When("user clicks on the sign up")
    public void click_Signup() throws InterruptedException {
        scrollingToElementofAPage(ACS_locators.sign_in, "move to signin");
        click(ACS_locators.sign_in, "click on the sign in button");
    }

    @When("user enters the username and password")
    public void entercredentials() {
        inputText(ACS_locators.enter_username, dataMap.get("Username"), "enter the username");
        inputText(ACS_locators.enter_password, dataMap.get("Password"), "enter the password");


    }

    @When("user clicks on the signin button for login")
    public void clickssignin() throws InterruptedException {
        Thread.sleep(6000);
        click(ACS_locators.sign_up, "click on the sign in button");
    }


    @And("hover on the admin name")
    public void hover_admin() throws InterruptedException {
        Thread.sleep(7000);
        scrollingToElementofAPage(ACS_locators.admin_name, "move to admin name");
        click(ACS_locators.admin_name, "click on the admin name");


    }

    @And("click on the {string} option")
    public void clicktemplates(String dropdownname) throws InterruptedException {
        Thread.sleep(7000);

        click(ACS_locators.dropdown_buttons(dropdownname), "click on the " + dropdownname + " option");
    }

    @And("enter the template name")
    public void enter_template_name() throws InterruptedException {
        Thread.sleep(7000);
        inputText(ACS_locators.enter_tempalte_name, dataMap.get("Template_Name"), "enter the " + dataMap.get("Template_Name") + " in the text box");
    }
    
    @And("Enter the project Name")
    public void enter_project_name() throws InterruptedException {
    	Thread.sleep(6000);
    	inputText(ACS_locators.enter_project_Name, dataMap.get("Project_Name"), "enter the " +dataMap.get("Project_Name") + " in the text box");
    }

    @When("click on the {string} button")
    public void click_Add_tempalte(String buttonname) throws InterruptedException {
    	scrollingToElementofAPage(ACS_locators.button_by_text(buttonname), "move to the " +buttonname);
        click(ACS_locators.button_by_text(buttonname), "click on the " + buttonname + "button");
        Thread.sleep(6000);
    }

    @Then("user is able to see the error message")
    public void verify_error_message() {

        Assert.assertTrue(isWebElementVisible(ACS_locators.error_message, getElementText(ACS_locators.error_message) + " error message  is present"));
    }

    @And("Search the template name")
    public void search_template() {

        inputText(ACS_locators.search_template, dataMap.get("Template_Name"), "search the " + dataMap.get("Template_Name"));
    }

    @When("click on the search button")
    public void click_search_button() throws InterruptedException {
        click(ACS_locators.search_button, "click on the search button");
        Thread.sleep(5000);
    }

    @And("hover on the manage button")
    public void hover_on_manage_button() throws InterruptedException {
        hoverOnElement(ACS_locators.Manage_button);
    }

    @And("Select the {string} option")
    public void select_manage_dropdown(String dropdown) throws InterruptedException {
    	 hoverOnElement(ACS_locators.Manage_button);
        click(ACS_locators.Manage_dropdowns(dropdown), "Select the " + dropdown);
    }

    @Then("user should be navigate to Edit template screen")
    public void verify_edit_template_screen() throws InterruptedException {
        Assert.assertTrue(isWebElementPresent(ACS_locators.Edit_Template_heading, "user is navigated to the edit template screen and able to see the heading " + getElementText(ACS_locators.Edit_Template_heading)));
        Thread.sleep(5000);
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
	}
    
    @When("Select activity card options radio button")
	public void selectRadioBtnActivityCardOptions() {
		if (!dataMap.get("activityradioBtnText").isEmpty())
			click(ACS_locators.activityCardOptions(dataMap.get("activityradioBtnText")), "select" + dataMap.get("activityradioBtnText") + " radio button");
	}
    
    @And("unselect checkboxes if checked in Activity card options")
	public void unselectCheckboxes() throws InterruptedException {
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        hoverOnElement(ACS_locators.allAvoutActivity);
        List<WebElement> selected_checkboxes=getListElements(By.cssSelector("input:checked[type='checkbox']"),"getting the selected checkbox");
        for (WebElement selectedcheckbox : selected_checkboxes) {
            Thread.sleep(5000);
            js.executeScript("arguments[0].click();", selectedcheckbox);
            Thread.sleep(6000);
        }
    }
    
    @And("select checkboxes in Activity card options")
   	public void selectCheckboxesInProjectSettings() throws InterruptedException {
    	hoverOnElement(ACS_locators.checkbox_project_doing_with_others);
		Thread.sleep(2000);
		if(!isWebElementVisibleWithoutLog(ACS_locators.selectCheckboxchecked(dataMap.get("CheckboxText"))))
		click(ACS_locators.selectCheckbox(dataMap.get("CheckboxText")), "select the project doing with others checkbox");
		Thread.sleep(2000);
    }
    
    @And("click on {string} button")
	public void updateBtn_template(String buttonname) {
		click(ACS_locators.button_by_text(buttonname), "clicking on update button");
	}
    
    @And("Search the Project name")
	public void search_project() throws InterruptedException {
    	 inputText(ACS_locators.search_project, dataMap.get("Project_Name"), "enter the project name");
        click(ACS_locators.search_button, "click on the search button");
        Thread.sleep(5000);

		try {
			if(!isWebElementVisibleWithoutLog(ACS_locators.projectList(dataMap.get("Project_Name")))){
				click(ACS_locators.nextBtn,"clicking on next button");
				
			}
		}
		catch(Exception e) {
			
		}

    }
	
	@And("click on next button")
	public void click_next_button() throws InterruptedException {
		scrollingToElementofAPage(ACS_locators.nextBtn, "click on next button");
		Thread.sleep(2000);
		click(ACS_locators.nextBtn, "click on next button");
		Thread.sleep(2000);
	}
	
	@And("click on view details")
	public void click_view_details() throws InterruptedException {
		click(ACS_locators.view_details, "click on view details");
	}
	
	@Then("user should be navigate to Edit project page")
	public void verify_edit_project_page() throws InterruptedException {
		Assert.assertTrue(isWebElementPresent(ACS_locators.Edit_Project_heading, "user is navigated to the edit project page and able to see the heading " 
		+ getElementText(ACS_locators.Edit_Project_heading)));
		Thread.sleep(5000);
	}
	
	@And("select project template setting")
	public void select_projecttemplate_setting() throws InterruptedException {
		hoverOnElement(ACS_locators.select_project_template_setting);
       // selectByVisibleText(ACS_locators.select_project_template_setting,dataMap.get("Template_Name"),"selecting project setting template value");
	selectByValue(ACS_locators.select_project_template_setting, "91", "YGVYB");
	}
	
	
	@Then("click on update project button")
	public void click_update_project_button() throws InterruptedException{
		hoverOnElement(ACS_locators.update_projectBtn);
		Thread.sleep(2000);
		click(ACS_locators.update_projectBtn, "click on update project button");
	}


}









