Feature: Orange HRM Logo

  Scenario: Logo presence on Orange HRM logo
    Given  launch my chrome browser
    When Open my Orange HRM homepage
    And Enter credentials username  "Admin" and password "admin123"
    And Click login button
    Then  user successfull login


  Scenario Outline: Logo presence on Orange HRM logo
    Given  launch my chrome browser
    When Open my Orange HRM homepage
    And Enter credentials username  "<username>" and password "<password>"
    And Click login button
    Then  user successfull login


    Examples:
      | username | password |
      | admin    | admin123 |
      | Admin    | admin123 |
      | adminXY  | admin123 |
      | Admin    | admin124 |



