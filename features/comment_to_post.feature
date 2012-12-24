Feature: Commenting to a post
  To test it in action
  
  Scenario: Submitting new comment
    Given I visit the posts page
    And select a post
    Then I should view the post
    Given I click comment link
    Then I should go to new_comment_path	
    And fill the text area with Test Comment.
    When I click link Create Comment
    Then I should see flash saying comment was successfully created.
    And I should be redirected to comment view page
    And page content should contain Test Comment
