Feature: Orange HRM Logo

  Background: common steps
    Given  i launch my chrome browser
    When i Open my Orange HRM homepage
    And Enter credentials username   and password
    And Click the login button

  Scenario: Logo presence on Orange HRM logo
    Then  user successfully login

  Scenario: Search user
    When navigate to search page
    Then  search page should disply

  Scenario: Advance search user
    When navigate to advance search page
    Then  search page should disply