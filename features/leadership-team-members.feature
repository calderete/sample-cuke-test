@team-member-scenario

Feature: A vistor can see leadership team members and their roles

  Scenario: A visitor can see leadership team members and their roles
    Given A vistor navigates to leadership team member information
    When They copy the leadership team member info
    Then It can be saved in a csv file
