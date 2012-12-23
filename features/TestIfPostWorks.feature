Feature: Test if post works
  In order to know if posting works
  As a developer
  I want it to behave in an expected way

  Scenario: Blog post
    Given I have an empty form
    And I fill it in with content
    When I click Submit
    Then the post content should be displayed in the post list

 