Feature: Test submitting new post
  In order to know if it works
  
  Scenario: Submitting new post
    Given I visit the posts page
    And click New post link
    Then I should go to new_post_path	
    And fill the text area with Test me please.
    When I click link Create Post
    Then I should see flash saying Post was successfully created.
    And page content should contain Test me please

  Scenario: Submitting empty post
    Given I visit the posts page
    And click New post link
    And fill the text area with empty string 
    When I click link Create Post
    Then I should see flash informing of an error