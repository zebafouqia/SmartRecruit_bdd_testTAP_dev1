
@feature_manage_job_roles
Feature: ManageJobRoles_positive

  Background: 
    Given the user is logged into the application
    And the user is on the Dashboard

  @navigate_to_job_role
  Scenario Outline: Manage Job Roles
    When the user clicks on the 'Job Management' menu
    And the user selects 'Job Role' from the dropdown
    Then the user should be redirected to the Job Role screen
    And the Job Role screen displays existing job role cards

  Examples:
    | username | password |
    | user1    | pass1    |

  @verify_job_role_cards
  Scenario Outline: Verify that the Job Role screen displays existing job role cards with the correct information
    When the user observes the displayed job role cards
    Then each job role card should display the title, description, created by, created date, and status

  Examples:
    | job_role_title | job_role_description | created_by | created_date | status |
    | Developer       | Responsible for coding| Admin      | 2023-01-01   | Active |
    | Tester          | Responsible for testing| Admin      | 2023-01-02   | Active |
    | Manager         | Responsible for managing| Admin     | 2023-01-03   | Active |

@create-new-job-role
Scenario Outline: Manage Job Roles
  When the user clicks on 'Add Job Role'
  And the user enters a valid Job Role Name <job_role_name>
  And the user enters a description <description>
  And the user clicks on 'Save'
  Then a new Job Role card should appear at the top of the list
  And the new Job Role should be in Active status by default

Examples:
  | job_role_name         | description                                                       |
  | Software Engineer      | Responsible for developing and maintaining software applications. |

  @job-role-creation-error
  Scenario Outline: Manage Job Roles without a Job Role Name
    When the user clicks on 'Add Job Role'
    And the user leaves the Job Role Name field empty
    And the user enters a description for the Job Role
    And the user clicks on 'Create'
    Then the system displays an error message indicating that the Job Role Name is mandatory

    Examples:
      | jobRoleName | jobRoleDescription                  |
      |             | This is a description for the job role. |

  @positive-job-role-description
  Scenario Outline: Manage Job Roles
    When the user clicks on 'Add Job Role'
    And the user enters a valid Job Role Name "<job_role_name>"
    And the user presses Ctrl+g to generate a description
    Then the description field is populated with an AI-generated description

    Examples:
      | job_role_name      |
      | Software Engineer   |

  @edit-job-role
  Scenario Outline: Manage Job Roles
    When the user selects an existing Job Role to edit
    And the user changes the Job Role title
    And the user changes the Job Role description
    And the user clicks on 'Update'
    Then the Job Role card reflects the updated title and description

    Examples:
      | jobRoleTitle       | jobRoleDescription         |
      | Developer          | Responsible for coding     |
      | Project Manager     | Oversees project delivery   |

  @job-role-activation
  Scenario Outline: Manage Job Roles
    Given the user selects an existing Job Role to edit
    When the user toggles the activation switch to deactivate the Job Role
    And the user clicks on 'Update'
    And the user refreshes the page
    Then the Job Role status should be reflected as Inactive after the refresh

  Examples:
    | jobRole         |
    | Existing Role 1 |

  @job-role-search
  Scenario Outline: Manage Job Roles
    When the user enters <job_role_title> in the search bar
    And the user clicks on the search button
    Then the system should display Job Roles that match the entered title

    Examples:
      | job_role_title      |
      | Software Engineer    |

  @search_active_job_roles
  Scenario Outline: Manage Job Roles
    When I enter "<search_keyword>" in the search bar
    And I click on the search button
    Then the system displays only Job Roles that are currently <expected_result>

    Examples:
      | search_keyword | expected_result |
      | Active         | Active          |
      | Inactive       | Inactive        |

  @verify_job_role_sorting
  Scenario Outline: Manage Job Roles
    When the user observes the order of Job Role cards
    Then the Job Role cards should be displayed with the most recently created roles at the top

  Examples:
    | job_role_card_order |
    | Most Recently Created |

@cancel_job_role_creation
Scenario Outline: Manage Job Roles
  When the user clicks on 'Add Job Role'
  And the user enters '<job_role_name>' as the Job Role Name
  And the user clicks on 'x' on the top right
  Then the user is returned to the Job Role screen without creating a new Job Role

  Examples:
    | job_role_name      |
    | Software Engineer   |

  @view-job-role-details
  Scenario Outline: Verify that the user can view detailed information of a Job Role by clicking on it
    When the user clicks on an existing Job Role card
    Then the system displays detailed information about the selected Job Role

    Examples:
      | job_role_card |
      | Job Role 1    |
      | Job Role 2    |
      | Job Role 3    |

  @navigate_job_role
  Scenario Outline: Manage Job Roles
    When the user clicks on an existing Job Role card
    And the user clicks on the 'x' on top right
    Then the user is returned to the Job Role screen

  Examples:
    | job_role_card |
    | existing_role  |
