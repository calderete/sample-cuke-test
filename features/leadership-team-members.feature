@team-member-scenario @test-csv

Feature: A vistor can see leadership team members roles and bio

  Scenario: A visitor can see leadership team members roles and bio
    Given A vistor navigates to leadership team member information
    When They copy the leadership team member info
    Then It can be saved in a csv file and viewed as a spreadsheet
