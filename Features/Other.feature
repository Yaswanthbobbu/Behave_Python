Feature: Search using Google and DuckDuckGo
    Search for LambdaTest on Google
    Search for LambdaTest on DuckDuckGo
    Compare the results

@LambdaTestSearch
Scenario: Search for LambdaTest on DuckDuckGo
    Given I am on the DuckDuckGo homepage
    When I enter search term as LambdaTest
    Then Search results for LambdaTest should appear

Scenario: Search for LambdaTest on Google
    Given I am on the Google homepage
    When I enter search term as LambdaTest
    Then Search results for LambdaTest should appear
