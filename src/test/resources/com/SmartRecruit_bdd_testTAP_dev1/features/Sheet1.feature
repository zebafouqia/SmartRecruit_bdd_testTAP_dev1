
@feature_manage_job_roles
Feature: Sheet1

  Background: 
    Given the user is logged into the application

  @navigate_to_job_role
  Scenario Outline: Manage Job Roles
    When the user navigates to the Dashboard
    And the user clicks on the 'Job Management' menu
    And the user selects 'Job Role' from the dropdown
    Then the user is redirected to the Job Role screen
    And the Job Role screen displays existing job role cards

  Examples:
    | username | password |
    | user1    | pass1    |

  @verify_job_role_cards
  Scenario Outline: Manage Job Roles
    When the user observes the displayed job role cards
    Then each job role card should display the title, description, created by, created date, and status

  Examples:
    | job_role_title | job_role_description | created_by | created_date | status |
    | Developer       | Responsible for coding| Admin      | 2023-01-01   | Active |
    | Tester          | Responsible for testing| Admin      | 2023-01-02   | Active |
    | Manager         | Responsible for managing| Admin     | 2023-01-03   | Inactive |

  @create-job-role
  Scenario Outline: Manage Job Roles
    When the user clicks on 'Add Job Role'
    And the user enters a valid Job Role Name <job_role_name>
    And the user enters a description for the Job Role <description>
    And the user clicks on 'Save'
    Then a new Job Role card appears at the top of the list
    And the new Job Role is in Active status by default

    Examples:
      | job_role_name      | description                                                       |
      | Software Engineer   | Responsible for developing and maintaining software applications. |

  @feature_manage_job_roles
  @mandatory_job_role_name
  Scenario Outline: Verify that the system does not allow the creation of a Job Role without a Job Role Name
    When the user clicks on 'Add Job Role'
    And the user leaves the Job Role Name field empty
    And the user enters '<description>' in the description field
    And the user clicks on 'Create'
    Then the system displays an error message indicating that the Job Role Name is mandatory

    Examples:
      | description                             |
      | This is a description for the job role. |

  @feature_user_login
  @ai-job-role-description
  Scenario Outline: Manage Job Roles
    When the user clicks on 'Add Job Role'
    And the user enters a valid Job Role Name "<jobRoleName>"
    And the user presses Ctrl+g to generate a description
    Then the description field should be populated with an AI-generated description
    And the user clicks on 'Create'

    Examples:
      | jobRoleName       |
      | Software Engineer  |

  @feature_manage_job_roles
  @edit-job-role
  Scenario Outline: Manage Job Roles
    When the user selects an existing Job Role to edit
    And the user changes the Job Role title
    And the user changes the Job Role description
    And the user clicks on 'Update'
    Then the Job Role card should reflect the updated title and description

  Examples:
    | job_role_title       | job_role_description         |
    | <existing_job_role>  | <new_job_role_description>  |

  @feature_manage_job_roles
  @toggle-job-role
  Scenario Outline: Manage Job Roles
    When the user selects an existing Job Role to edit
    And the user toggles the activation switch to deactivate the Job Role
    And the user clicks on 'Update'
    And the user refreshes the page
    Then the Job Role status is reflected as Inactive after the refresh

  Examples:
    | job_role_name       |
    | Existing Job Role 1 |

  @search-job-role
  Scenario Outline: Manage Job Roles
    When I enter a valid Job Role title "<job_role_title>" in the search bar
    And I click on the search button
    Then the system should display Job Roles that match the entered title

    Examples:
      | job_role_title      |
      | Software Engineer    |

  @feature_manage_job_roles
  @search_active_roles
  Scenario Outline: Verify that the user can search for Job Roles using the keyword '<keyword>'
    When I enter '<keyword>' in the search bar
    And I click on the search button
    Then the system displays only Job Roles that are currently <expected_result>

    Examples:
      | keyword | expected_result |
      | Active  | Active          |
      | Inactive| Inactive        |

@job-role-sorting
Scenario Outline: Manage Job Roles
  When the user observes the order of Job Role cards
  Then the Job Role cards are displayed with the most recently created roles at the top

Examples:
  |  |
  |  |

  @feature_user_login
  @cancel_job_role_creation
  Scenario Outline: Manage Job Roles
    When the user clicks on 'Add Job Role'
    And the user enters a valid Job Role Name as <job_role_name>
    And the user clicks on 'x' on the top right
    Then the user is returned to the Job Role screen without creating a new Job Role

    Examples:
      | job_role_name       |
      | Software Engineer    |

  @feature_manage_job_roles
  @view-job-role-details
  Scenario Outline: Verify detailed information of a Job Role by clicking on it
    When the user clicks on an existing Job Role card
    Then the system displays detailed information about the selected Job Role

  Examples:
    | Job Role Card |
    | Existing Job Role 1 |
    | Existing Job Role 2 |
    | Existing Job Role 3 |

  @feature_user_login
  @navigate_back_job_role
  Scenario Outline: Navigate Back to Job Role Screen
    When the user clicks on an existing Job Role card
    And the user clicks on the 'x' on top right
    Then the user is returned to the Job Role screen

  Examples:
    | Job Role Card |
    | Existing Job Role 1 |
