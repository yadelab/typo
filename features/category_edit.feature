Feature: Edit Category
  As a blog administrator
  In order to organize articles
  I want to able to edit categories
  
Background:
  Given the blog is set up
  And I am logged into the admin panel
  
Scenario: Successfully edit a new category
  Given I am on the categories page
  And I follow "Cosmos"
  When I fill in "name" with "Greek Mythology"
  And I fill in "keywords" with: zeus, poseidon, kratos
  And I fill in "permalink" with "http://"
  And I fill in "description" with "Zeus was the god of the sky and ruler of the Olympian gods. He overthrew his father, Cronus, and then drew lots with his brothers Poseidon and Hades, in order to decide who would succeed their father on the throne. Zeus won the draw and became the supreme ruler of the gods, as well as lord of the sky and rain. His weapon was a thunderbolt which he hurled at those who displeased or defied him, especially liars and oathbreakers. He was married to Hera but often tested her patience, as he was infamous for his many affairs."
  And I press "save"
  Then I should be on the admin content page
  
  When I go to the home page
  Then I should see "Greek Mythology"
  When I follow "Greek Mythology"
  Then I should see "Zeus was the god of the sky and ruler of the Olympian gods. He overthrew his father, Cronus, and then drew lots with his brothers Poseidon and Hades, in order to decide who would succeed their father on the throne. Zeus won the draw and became the supreme ruler of the gods, as well as lord of the sky and rain. His weapon was a thunderbolt which he hurled at those who displeased or defied him, especially liars and oathbreakers. He was married to Hera but often tested her patience, as he was infamous for his many affairs."