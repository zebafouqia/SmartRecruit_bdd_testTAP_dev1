package com.SmartRecruit_bdd_testTAP_dev1.stepdefinitions;

import com..utils.ElementUtils;
import org.junit.Assert;
import com..driverfactory.DriverFactory;
import com.SmartRecruit_bdd_testTAP_dev1.pages.UploadNewCandidateProfile_po;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
public class UploadNewCandidateProfile_po extends DriverFactory {
UploadNewCandidateProfile_po uploadNewCandidateProfilePage = new UploadNewCandidateProfile_po(driver);
@Given("the user is on the Profile section")
public void the_user_is_on_the_profile_section() {
uploadNewCandidateProfilePage.navigateToProfileSection();
}
@When("the user clicks on the upload (cloud) icon")
public void the_user_clicks_on_the_upload_cloud_icon() {
uploadNewCandidateProfilePage.clickUploadIcon();
}
@When("the user browses and selects a candidate profile file {string}")
public void the_user_browses_and_selects_a_candidate_profile_file(String candidateProfileFile) {
uploadNewCandidateProfilePage.selectCandidateProfileFile(candidateProfileFile);
}
@When("the user clicks on the Upload button")
public void the_user_clicks_on_the_upload_button() {
uploadNewCandidateProfilePage.clickUploadButton();
}
@When("the user waits for the upload process to complete")
public void the_user_waits_for_the_upload_process_to_complete() {
uploadNewCandidateProfilePage.waitForUploadToComplete();
}
@Then("a success confirmation message appears, indicating the profile was uploaded successfully")
public void a_success_confirmation_message_appears_indicating_the_profile_was_uploaded_successfully() {
"Upload success message should be displayed", uploadNewCandidateProfilePage.isUploadSuccessMessageDisplayed();
}
@Then("the {string} with a confirmation message")
public void verifyUploadResultWithConfirmationMessage(String uploadResult) {
Assert.assertEquals("Upload result message should match", uploadResult, uploadNewCandidateProfilePage.getUploadConfirmationMessage());
}
@Then("both profiles are listed in the Profile section")
public void both_profiles_are_listed_in_the_profile_section() {
"Both profiles should be listed in the Profile section", uploadNewCandidateProfilePage.areProfilesListed();
}
@Then("the metadata should be displayed correctly in the Profile section")
public void the_metadata_should_be_displayed_correctly_in_the_profile_section() {
"Metadata should be displayed correctly", uploadNewCandidateProfilePage.isMetadataDisplayedCorrectly();
}
@Then("all uploaded profiles should be listed in the Profile section")
public void all_uploaded_profiles_should_be_listed_in_the_profile_section() {
"All uploaded profiles should be listed", uploadNewCandidateProfilePage.areAllProfilesListed();
}

@Given("the user browses selects a valid candidate profile file")
public void the_user_browses_selects_a_valid_candidate_profile_file() {
uploadNewCandidateProfilePage.browseAndSelectValidCandidateProfileFile();
}
@When("the user clicks on the upload icon")
public void the_user_clicks_on_the_upload_icon() {
uploadNewCandidateProfilePage.clickUploadIcon();
}
@Given("the recruiter browses selects a candidate profile file in a supported format")
public void the_recruiter_browses_selects_a_candidate_profile_file_in_a_supported_format() {
uploadNewCandidateProfilePage.browseAndSelectSupportedFormatCandidateProfileFile();
}
@When("the recruiter clicks on the upload button")
public void the_recruiter_clicks_on_the_upload_button() {
uploadNewCandidateProfilePage.clickUploadButton();
}
@Given("the hiring manager clicks on the upload (cloud) icon")
public void the_hiring_manager_clicks_on_the_upload_cloud_icon() {
uploadNewCandidateProfilePage.clickUploadCloudIcon();
}
@Given("the recruiter browses selects the {string}")
public void the_recruiter_browses_selects_the(String candidateProfileFile) {
uploadNewCandidateProfilePage.browseAndSelectCandidateProfileFile(candidateProfileFile);
}
@When("the admin clicks on the upload icon")
public void the_admin_clicks_on_the_upload_icon() {
uploadNewCandidateProfilePage.clickUploadIcon();
}
@Given("the user browses selects a candidate profile file in rtf format")
public void the_user_browses_selects_a_candidate_profile_file_in_rtf_format() {
uploadNewCandidateProfilePage.browseAndSelectCandidateProfileFileInRtfFormat();
}
@When("the admin clicks on the upload button")
public void the_admin_clicks_on_the_upload_button() {
uploadNewCandidateProfilePage.clickUploadButton();
}
@Given("the admin browses selects multiple valid candidate profile files")
public void the_admin_browses_selects_multiple_valid_candidate_profile_files() {
uploadNewCandidateProfilePage.browseAndSelectMultipleValidCandidateProfileFiles();
}
@Then("a success confirmation message appears indicating the profile was uploaded successfully")
public void a_success_confirmation_message_appears_indicating_the_profile_was_uploaded_successfully() {
uploadNewCandidateProfilePage.isSuccessConfirmationMessageDisplayed();
}
@Given("the user browses selects a candidate profile file with metadata")
public void the_user_browses_selects_a_candidate_profile_file_with_metadata() {
uploadNewCandidateProfilePage.browseAndSelectCandidateProfileFileWithMetadata();
}
@When("the hiring manager clicks on the upload button")
public void the_hiring_manager_clicks_on_the_upload_button() {
uploadNewCandidateProfilePage.clickUploadButton();
}
@Then("the hiring manager waits for the upload process to complete")
public void the_hiring_manager_waits_for_the_upload_process_to_complete() {
uploadNewCandidateProfilePage.waitForUploadProcessToComplete();
}
@Given("the user browses selects a candidate profile file with a different valid extension")
public void the_user_browses_selects_a_candidate_profile_file_with_a_different_valid_extension() {
uploadNewCandidateProfilePage.browseAndSelectCandidateProfileFileWithDifferentExtension();
}
@Then("the confirmation message should be displayed indicating the profile was uploaded successfully")
public void the_confirmation_message_should_be_displayed_indicating_the_profile_was_uploaded_successfully() {
uploadNewCandidateProfilePage.isConfirmationMessageDisplayed();
}
@Then("a success confirmation message should appear, indicating the profile was uploaded successfully")
public void a_success_confirmation_message_should_appear_indicating_the_profile_was_uploaded_successfully() {
uploadNewCandidateProfilePage.isSuccessConfirmationMessageDisplayed();
}
@Then("the recruiter waits for the upload process to complete")
public void the_recruiter_waits_for_the_upload_process_to_complete() {
uploadNewCandidateProfilePage.waitForUploadProcessToComplete();
}
@Given("the recruiter clicks on the upload (cloud) icon")
public void the_recruiter_clicks_on_the_upload_cloud_icon() {
uploadNewCandidateProfilePage.clickUploadCloudIcon();
}
@Then("the recruiter should see a confirmation message indicating the profile was uploaded successfully")
public void the_recruiter_should_see_a_confirmation_message_indicating_the_profile_was_uploaded_successfully() {
uploadNewCandidateProfilePage.isConfirmationMessageDisplayed();
}
@Then("the upload process completes successfully")
public void the_upload_process_completes_successfully() {
uploadNewCandidateProfilePage.isUploadProcessCompleted();
}
@Then("the admin waits for the upload process to complete")
public void the_admin_waits_for_the_upload_process_to_complete() {
uploadNewCandidateProfilePage.waitForUploadProcessToComplete();
}
@Given("the hiring manager browses selects a valid candidate profile file")
public void the_hiring_manager_browses_selects_a_valid_candidate_profile_file() {
uploadNewCandidateProfilePage.browseAndSelectValidCandidateProfileFile();
}
@Given("the user browses selects a candidate profile file with the long filename {string}")
public void the_user_browses_selects_a_candidate_profile_file_with_the_long_filename(String longFilename) {
uploadNewCandidateProfilePage.browseAndSelectCandidateProfileFileWithLongFilename(longFilename);
}
@When("the recruiter clicks on the upload icon")
public void the_recruiter_clicks_on_the_upload_icon() {
uploadNewCandidateProfilePage.clickUploadIcon();
}
}