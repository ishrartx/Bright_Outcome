package pageobjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ACS_locators {

	public static By sign_in = By.xpath("//a[text()='Sign in']");
	
	public static By enter_username = By.xpath("//input[@placeholder='Enter Username']");
	
	public static By enter_password = By.xpath("//input[@placeholder='Enter Password']");

	public static By sign_up = By.xpath("//strong[text()='Sign in']");

	public static By admin_name = By.xpath("//span[text()=' Hi sahil kapoor ']");

	public static By templates = By.xpath("//a[text()=' Templates ']");

	public static By enter_tempalte_name = By.xpath("//input[@placeholder='Enter template name']");

	public static By enter_project_Name = By.xpath("//input[@placeholder='Enter project name']");

	public static By add_tempalte_button = By.xpath("//button[text()=' Add template ']");

	public static By search_template = By.xpath("//input[@placeholder='Search template']");

	public static By alert_message1=By.xpath("//div[@aria-label='Project is added successfully.']");

	public static By search_project = By.xpath("//input[@placeholder='Enter a project name']");

	public static By third_radio_button = By.xpath("(//input[@type='radio'])[3]");

	public static By no_record_found=By.xpath("//td[text()=' No record found ']");

	public static By enter_project_name=By.xpath("//input[@placeholder='Enter project name']");

	public static By Add_project=By.xpath("//button[text()=' Add project ']");

	public static By button_by_text(String buttonname) {
		return By.xpath("//button[text()='"+ buttonname + "']");
	}

	public static By dropdown_buttons(String buttonname) {
		return By.xpath("//a[text()='"+ buttonname +"']");
	}

	public static By alert_message = By.xpath("//div[@role='alertdialog']");

	public static By search_button = By.xpath("//button[@title='search_btn_status']");
	
	public static By sign_out=By.xpath("//a[text()='Sign Out']");
	
	public static By Back_button=By.xpath("//a[@class='back-btn']");

	//public static By Manage_button = By.xpath("//button[@class='btn btn btn-view']");

	public static By template_manage_button(String template_name){
		return By.xpath("//td[text()=' "+template_name+" ']//following-sibling::td[1]//button[@class='btn btn btn-view']");
	}

	public static By template_Manage_dropdowns(String templatename,String dropdownname) {
		return By.xpath("//td[text()=' "+templatename+" ']//following-sibling::td[1]//ul[@class='dropdown-menu dropdown-menu-right']//a[text()='"+dropdownname+"']");
	}
	public static  By manage_button(String project_name){
		return By.xpath("//td[text()=' "+project_name+" ']//following-sibling::td[3]//button[@class='btn btn btn-view']");
	}

	public static By Edit_Template_heading = By.xpath("//h1[text()='Edit Template']");

	public static By Manage_dropdowns(String projectname,String dropdownname) {
		return By.xpath("//td[text()=' "+projectname+" ']//following-sibling::td[3]//ul[@class='dropdown-menu dropdown-menu-right']//a[text()='"+dropdownname+"']");
	}

	public static By checkboxActivityTemplate = By.xpath("//input[@type='checkbox' and contains(@class,'dirty')]//parent::div");

	public static By checkboxActivityTemplate(int index) {
		return By.xpath("(//input[@type='checkbox' and contains(@class,'dirty')]//parent::div)[" + index + "]");
	}

	public static By displayParticipantLabel = By.xpath("//label[text()='Display participant list without search']");
	
	public static By activityCardInstruction = By.xpath("//input[@id='activity_card_instruction']");

	public static By mobileACSReport = By.xpath("//input[@id='mobile_acs_instruction']");

	public static By remoteACSReport = By.xpath("//input[@id='remote_acs_instruction']");

	public static By updateBtn = By.xpath("//button[text()=' Update Details ']");
	
	public static By allAvoutActivity = By.xpath("//label[text()='Ask about activities that they do with others']");
	
	public static By activityCardOptions(String activityradioBtnText) {
		return By.xpath("//span[text()='" + activityradioBtnText + "']//ancestor::label//span[@class='cr']");
	}
	
	public static By projectList(String project) {
		return By.xpath("//table[@class='table table-striped']//tr//td[@class='semi-bold' and text()=' "+project+" ']");
	}
	
	public static By settingTemplateList = By.xpath("//select[@id='setting_template_id ']//option");

	public static By nextBtn = By.xpath("//a[text()=' Next ']");

	public static By view_details = By.xpath("//a[text()='View details']");

	public static By Edit_Project_heading = By.xpath("//h1[text()='Edit Project']");
	
	public static By checkbox_project_doing_with_others = By.xpath("//input[@type='checkbox' and @id='project_doing_with_others']//parent::div");

	public static By select_project_template_setting = By.xpath("//select[@id='setting_template_id ']");

	public static By select_template_name(String templatename) {
		return By.xpath("//select[@id='setting_template_id ']/option[text()=' " + templatename + " ']");
		
	}
	public static By selectCheckbox(String checkboxTxt) {
		return By.xpath("//label[text()='" +checkboxTxt+"']//ancestor::label//div[@class='check-bottom']");
	}
	
	
	public static By search_results = By.xpath("//table[@class='table table-striped']//tr//td[@class='semi-bold']");
	
	public static By update_projectBtn = By.xpath("//button[text()='Update Project']");
	
	public static By selected_checkboxes=By.cssSelector("input:checked[type='checkbox']");

	@FindBy(css = "input:checked[type='checkbox']")
	public static WebElement checkbox;

}
