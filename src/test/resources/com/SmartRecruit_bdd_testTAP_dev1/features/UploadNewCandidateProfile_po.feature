
@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile_po

Background: 
  Given the user is on the Profile section

@successful-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a valid candidate profile file
  And the user clicks on the Upload button
  And the user waits for the upload process to complete
  Then a success confirmation message appears, indicating the profile was uploaded successfully

Examples:
  | valid_candidate_profile_file |
  | valid_profile.pdf            |
  | valid_profile.docx           |

@valid-profile-upload
Scenario Outline: Upload New Candidate Profile
  When the recruiter clicks on the upload (cloud) icon
  And the recruiter browses and selects the <candidate_profile_file>
  And the recruiter clicks on the Upload button
  Then the <upload_result> with a confirmation message
  And both profiles are listed in the Profile section

Examples:
  | candidate_profile_file                     | upload_result                                      |
  | the first valid candidate profile file     | first profile uploads successfully                |
  | the second valid candidate profile file    | second profile upload process initiates without errors |

@upload-candidate-profile
Scenario Outline: Upload New Candidate Profile
  When the recruiter clicks on the upload icon
  And the recruiter browses and selects a candidate profile file in a supported format
  And the recruiter clicks on the Upload button
  And the recruiter waits for the upload process to complete
  Then the recruiter should see a confirmation message indicating the profile was uploaded successfully

Examples:
  | candidate_profile_file |
  | <supported_format_file> |

  @verify_upload_long_filename
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects a candidate profile file with the long filename <long_filename>
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then a success confirmation message should appear, indicating the profile was uploaded successfully

    Examples:
      | long_filename                                                        |
      | This_is_a_very_long_filename_for_a_candidate_profile_document.pdf   |

@candidate-profile-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a candidate profile file with metadata
  And the user clicks on the Upload button
  And the user waits for the upload process to complete
  Then the metadata should be displayed correctly in the Profile section

Examples:
  | candidate_profile_file |
  | <candidate_profile_file> |

@valid-file-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a candidate profile file with a different valid extension
  And the user clicks on the Upload button
  And the user waits for the upload process to complete
  Then a success confirmation message should appear, indicating the profile was uploaded successfully

Examples:
  | file_extension |
  | RTF            |

@successful-upload
Scenario Outline: Upload New Candidate Profile
  When the Hiring Manager clicks on the upload (cloud) icon
  And the Hiring Manager browses and selects a valid candidate profile file
  And the Hiring Manager clicks on the Upload button
  And the Hiring Manager waits for the upload process to complete
  Then the confirmation message should be displayed indicating the profile was uploaded successfully

Examples:
  | candidate_profile_file       |
  | valid_candidate_profile.pdf   |

@successful-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a candidate profile file in RTF format
  And the user clicks on the Upload button
  Then the upload process completes successfully
  And a success confirmation message appears indicating the profile was uploaded successfully

Examples:
  | candidate_profile_file |
  | <RTF file>            |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the admin clicks on the upload icon
  And the admin browses and selects multiple valid candidate profile files
  And the admin clicks on the Upload button
  And the admin waits for the upload process to complete
  Then all uploaded profiles should be listed in the Profile section

Examples:
  | candidate_profile_files |
  | file1.pdf              |
  | file2.pdf              |
  | file3.pdf              |
