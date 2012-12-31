Feature: Operations on Posts
  In order to learn Spinach
  As a developer
  I want to do BDD design of Posts

  Scenario: Creating a Post
    Given I am on home page
    And I enter the post content
    When I click Submit button
    Then the post should be created
    And I should see it in the posts list

  Scenario: Editing a Post
    Given I am on home page
    And I click on Post I want to edit
    And I enter new content
    When I click Submit button
    Then the post content should change

  Scenario: Deleting a Post
    Given I have selected the last post
    When I click Delete button
    Then the post should be deleted  