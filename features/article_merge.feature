Feature: Merge 2 similar articles
  As a blog administrator
  In order to reduce duplication of articles
  I want to able to merge 2 articles
  
Background:
  Given the blog is set up
  And I am logged into the admin panel
  And 2 articles with similar content exist
  
Scenario: Successfully merge 2 similar articles together
  Given I am on the admin content page
  When I follow "Game of Thrones"
  And I fill in "Article ID" with "2"
  And I press "Merge"
  Then I should be on the admin content page
  And I should see "Game of Thrones"
  And I should not see "A song of Ice and Fire"
  Then I should see "lorem ipsum"
  

# Background: 
#   Given the blog is set up
#   And I am logged into the admin panel

# Scenario: Merge feature should not appear to new articles
#   Given I am on the admin dashboard
#   And I follow new article
#   Then I should not see ""
  
  
# Scenario: Merge feature should not appear to non-administrators

#   Given I am on the admin dashboard
#   And I follow new article
#   Then I should see ""
  
# Background: 
#   Given the blog is set up
#   And I am logged into the user panel

# Scenario: Merge feature should not appear to new articles
#   Given I am on the admin dashboard
#   And I follow new article
#   Then I should not see ""
  
  
# Scenario: Merge feature should not appear to non-administrators

#   Given I am on the admin dashboard
#   And I follow new article
#   Then I should not see ""  