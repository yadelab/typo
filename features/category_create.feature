Feature: Create Category
  As a blog administrator
  In order to organize articles
  I want to able to create categories
  
Background:
  Given the blog is set up
  And I am logged into the admin panel
  
Scenario: Successfully create a new category
  Given I am on the new category page
  When I fill in "name" with "Cosmos"
  And I fill in "keywords" with: planetx,universe,galaxy
  And I fill in "permalink" with "http://"
  And I fill in "description" with "Lorem ipsum dolor sit amet, his dicit quidam quaeque te, magna noluisse ea eam. Dicta nusquam tincidunt has at, posse scripta periculis duo in. Nec justo vitae sententiae at. Ex vel malis utroque hendrerit, eam modo iudico at. Has case definiebas ea, no ius decore adversarium."
  And I press "save"
  Then I should be on the admin content page
  
  When I go to the home page
  Then I should see "Cosmos"
  When I follow "Cosmos"
  Then I should see "Lorem ipsum dolor sit amet, his dicit quidam quaeque te, magna noluisse ea eam. Dicta nusquam tincidunt has at, posse scripta periculis duo in. Nec justo vitae sententiae at. Ex vel malis utroque hendrerit, eam modo iudico at. Has case definiebas ea, no ius decore adversarium."
  