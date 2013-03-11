Feature: Merge Articles
  As a blog administrator
  In order to reduce duplicate articles
  I want to be able to merge articles in my blog
  Background:
    Given the blog is set up
    Given I am on the new article page
    And I fill in "article_title" with "Foo"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"

  Scenario: Merge articles
    Given I am on the admin content page
    When I edit article "Foo"
    And I fill in "merge_with" with "Foobar"
    And I press "Merge"
    Then I should be on the admin content page
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"