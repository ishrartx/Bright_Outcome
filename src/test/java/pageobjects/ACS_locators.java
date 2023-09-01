package pageobjects;

import java.util.Random;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ACS_locators {

	public static By sign_in = By.xpath("//a[text()='Sign in']");
	
	public static By enter_username = By.xpath("//input[@placeholder='Enter Username']");
	
	public static By enter_password = By.xpath("//input[@placeholder='Enter Password']");

	public static By sign_up = By.xpath("//strong[text()='Sign in']");

	public static By pending_Acs= By.xpath("//tr[@class='ng-star-inserted']//td[6]");
	
	public static By admin_name = By.xpath("//span[@class='u-name-full']");
	
	public static By username = By.xpath("//*[text()='Username ']");
	
	public static By right_header = By.xpath("//ul[@class='nav navbar-nav navbar-right header']");

	public static By templates = By.xpath("//a[text()=' Templates ']");

	public static By enter_tempalte_name = By.xpath("//input[@placeholder='Enter template name']");

	public static By enter_project_Name = By.xpath("//input[@placeholder='Enter project name']");

	public static By search_template = By.xpath("//input[@placeholder='Search template']");

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

	public static  By Manage_Professional=By.xpath("//button[text()=' Manage Professional ']");
	
	public static By ManageProfessional_dropdown(String Professional) {
		return By.xpath("//div[@class='btn-group dropdown-user']//a[text()='"+ Professional +"']");
	}
	
	public static By existing_professional(String pname) { 
		return By.xpath("//div[@title='list professional']//ul/li/a[text()='"+pname+"']");
	}
	
	public static By selectProfessionalUserAdminCheckbox(String pname) {
		return By.xpath("//td[text()='"+pname+"']//following-sibling::td[2]");
	}
	
	public static By existing_professionals = By.xpath("//div[@class='table-responsive']//td[2]");
	
	public static By status_text(String text) {
		return By.xpath("//td[text()=' "+text+" ']//following-sibling::td[1]");
	}
	
	public static By Research_text(String text) {
		return By.xpath("//td[text()=' "+text+" ']//following-sibling::td[2]");
	}
	
	public static By manage_dropdown(String text){
		return By.xpath("//td[text()=' "+text+" ']//following-sibling::td[3]");
	}
	
	public static By First_name=By.xpath("//input[@placeholder='Enter first name']");
	
	public static By Last_name=By.xpath("//input[@placeholder='Enter last name']");
	
	public static By Email_address=By.xpath("//input[@placeholder='Enter email address']");
	
	public static By Submit_button=By.xpath("//button[text()=' Submit ']"); 
	
	public static By admin_box=By.xpath("//div[@class='checkbox']");
	
	public static By Edit_Project=By.xpath("//h1[text()='Edit Project']");
	
	public static By activate_button(String text,String buttoname) {
		 return By.xpath("//tr[@class='ng-star-inserted']//td[text()='"+text+"']//following-sibling::td[1]//button[text()='"+buttoname+"']");
		}

	   public static By footerLinks(String link){
	        return  By.xpath("//div[@class='footer-link']//a[contains(text(),'"+link+"')]");
	    }

	    public static By pageHeading(String link){
	        return  By.xpath("//h1[contains(text(),'"+link+"')]");
	    }
	    
	    public static By User_Deactivate(String email) {
	        return By.xpath("//td[text()='"+email+"']//following-sibling::td[3]");
	    }
	    public static By moveto_cancelbutton=By.xpath("//a[text()='Cancel']");
	    
		public static By button_contains_text(String buttonname) {
			return By.xpath("//button[contains(text(),'"+ buttonname + "')]");
		}
		
		public static By verify_project_admin_checkbox_checked(String pname) {
			return By.xpath("//td[text()='"+pname+"']//following-sibling::td[2]//input[@type='checkbox']");
		}
		
		public static By select_project_participant=By.xpath("//select[@name='projects_id']");
		
		public static By click_link(String link){
			return By.xpath("//a[text()='"+link+"']");
		}
		
		public static By enter_input_details(String field){
			return By.xpath("//input[@placeholder='"+field+"']");
		}
		
		public static By select_year=By.xpath("//select[@name='participant_dob_year']");

		public static By select_month=By.xpath("//select[@name='participant_dob_month']");

		public static By select_day=By.xpath("//select[@name='participant_dob_date']");

		public static By select_gender=By.xpath("//select[@name='participant_gender']");
		
		public static By participant_first_name=By.xpath("//input[@id='participant_first_name']");

		public static By participant_last_name=By.xpath("//input[@id='participant_last_name']");


		public static By edit_deactivate_button=By.xpath("//button[@class='btn btn-view pull-right ng-star-inserted']");

		public static By participant_result=By.xpath("//tr[@class='ng-star-inserted']");

		public static By paticipant_id=By.xpath("//tr[@class='ng-star-inserted']//td[5]");

		public static By participant_full_name=By.xpath("//tr[@class='ng-star-inserted']//td[1]");
		
		public static By find_Participant_first_Name( ) {
			return By.xpath("//input[@id='participant_first_name']");
		}
		
		public static By find_Participant_last_name( ) {
			return By.xpath("//input[@id='participant_last_name']");
		}
		public static  By view_button(String name){
			return By.xpath("//td[contains(text(),'"+name+"')]//following-sibling::td[6]//button[@class='btn btn btn-view dropdown-toggle']");
		}
		
		public static  By Manage_ACS=By.xpath("//button[text()=' Manage ACS ']");
		
		public static By click_on_BeginACS=By.xpath("//a[text()='Begin ACS']");
		
		public static By ManageACS_dropdown(String acs) {
			return By.xpath("//div[@class='btn-group']//a[contains(text(),'"+acs+"')]");
		}
		
		public static By participant_search =By.xpath("//button[@type='submit'][1]");
		
		public static By view_dropdowns(String name,String dropdownname) {
			return By.xpath("//td[contains(text(),'"+name+"')]//following-sibling::td[6]//ul[@class='dropdown-menu dropdown-menu-right']//a[text()='"+dropdownname+"']");
		}
		
		public static By global_values=By.xpath("//table[@class='table table-striped result-history-tbl']//tbody//td[2]");

		public static By Instrumenal_values=By.xpath("//table[@class='table table-striped result-history-tbl']//tbody//td[3]");

		public static By Lesiure_values=By.xpath("//table[@class='table table-striped result-history-tbl']//tbody//td[4]");

		public static By Fitness_values=By.xpath("//table[@class='table table-striped result-history-tbl']//tbody//td[5]");

		public static By Social_values=By.xpath("//table[@class='table table-striped result-history-tbl']//tbody//td[6]");
		
		public static By participant_view_button(String username){
			return By.xpath("//td[text()=' "+username+" ']//following-sibling::td[6]");
		}

		public static By participant_Acs(String participant_name){
			return By.xpath("//td[text()=' "+participant_name+" ']//following-sibling::td[6]//a[text()='Participant ACS']");
		}
		
		public static By project_status = By.xpath("//table/tbody/tr/td[2]");

		public static By participant_acs_status = By.xpath("//table/tbody/tr/td[6]");
		
		public static By enter_emailname=By.xpath("//input[@placeholder='Enter your inbox here']");
		
		public static By click_on_complete_assessment_button=By.xpath("//a[normalize-space()='Complete assessment']");
		
		public static By click_on_next=By.xpath("//i[@class='material-icons-outlined f36']");
		public static By Questions_option_selection=By.xpath("//tr[@class='ng-star-inserted']//td[2]//span");
		public static By click_on_nextbutton=By.xpath("//*[contains(text(),'Next')]");
		
		public static By select_questionOption( int i) {
	        Random r = new Random();
	        int low=2;
	        int high = 5;
	        int res = r.nextInt(high-low)+low;
	        return By.xpath("(//tr[@class='ng-star-inserted']//td["+res+"]//span)["+i+"]");
	    }
		
		public static By click_on_exitbutton=By.xpath("//a[text()='Exit']");
		
		public static By click_on_ACSButtons(String acsabtton) {
            return By.xpath("//a[text()='"+acsabtton+"']");
		}
		
		public static By select_testcase=By.xpath("//select[@title='select case']");
		
		public static By selecttestcase_dropdown(String testcase) {
          return By.xpath("//div[@class='col-xs-12 text-right test-button']//option[contains(text(),'"+testcase+"')]");
		}
		
		public static By selectthe_tiles=By.xpath("//div[@class='box']");
		
		public static By select_ActivitiesOption(String Checkbox) {
           return By.xpath("//span[contains(text(),'" + Checkbox + "')]");
        }
		
		public static By webquestions_option_selection=By.xpath("//div[@class='table-responsive-md tbl-color']//td[2]//span");

		public static By selectweb_questionOption( int i) {
	        Random r = new Random();
	        int low=2;
	        int high = 5;
	        int web = r.nextInt(high-low)+low;
	        return By.xpath("(//div[@class='table-responsive-md tbl-color']//td["+web+"]//span)["+i+"]");
		}
		
		public static By activityCurrentValueGlobal(String act) {
          return By.xpath("(//strong[text()='"+act+"']//following::strong[2])[1]");
        }
		
		public static By activityCurrentValue(String act) {
          return By.xpath("(//td[text()='"+act+"']//following::td[2])[1]");
		}

		public static By autoTestOptions_dropdown = By.xpath("//select[@name='autoTestOptions']");
		
		public static By barriersChkOpts(String opt) { return By.xpath("//*[text()='"+opt+"']//preceding-sibling::span"); }
		
		public static By navbar_btn = By.xpath("//button[@class='navbar-toggle collapsed']");
		
		public static By toggle_button=By.xpath("//button[@class='navbar-toggle']");
		
		public static By selOpts(String text) {
			return By.xpath("//div[text()='"+text+" ']");
		}
		
		public static By Sahil_admin=By.xpath("(//a[text()='Sahil Kapoor']) [2]");
		
		public static By begin_ACS=By.xpath("//button[text()=' Begin ACS ']");

		public static By Demographic_survey=By.xpath("//h1[text()='Demographic Survey']");
		
		public static By enter_city=By.xpath("//input[@placeholder='Enter Your City']");

		public static By Activity_card=By.xpath("//h3[text()='Welcome to ACS3 - Activity Card Sort']");

		@FindBy(xpath = "//button[text()=' Submit ']")
		public static WebElement submit_btn;

		public static By never_done=By.xpath("//a[text()='Never Done ']");
		
		public static By slider=By.xpath("//span[@class='ngx-slider-span ngx-slider-bar-wrapper ngx-slider-full-bar']//span[@class='ngx-slider-span ngx-slider-bar']");
		
		public static By promis_page=By.xpath("//h4[text()=' Please respond to each question or statement by marking one box per row. ']");

        public static By selectthetitleonmobile(String text) {
            return By.xpath("//div[text()='"+text+"']");
        }

}