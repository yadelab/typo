Feature: Create & Edit Category
  As a blog administrator
  In order to organize articles
  I want to able to create and edit categories
  
Background:
  Given the blog is set up
  And I am logged into the admin panel
  
Scenario: Successfully create and edit a new category
  Given I am on the new categories page
  When I fill in "category_name" with "Cosmos"
  And I fill in "category_keywords" with "planetx, universe, galaxy"
  And I fill in "category_permalink" with "ttssy"
  And I fill in "category_description" with "Lorem ipsum dolor sit amet, his dicit quidam quaeque te, magna noluisse ea eam. Dicta nusquam tincidunt has at, posse scripta periculis duo in. Nec justo vitae sententiae at. Ex vel malis utroque hendrerit, eam modo iudico at. Has case definiebas ea, no ius decore adversarium."
  And I press "Save"
  Then I should be on the new categories page
  Then I should see "Cosmos"
  When I follow "Cosmos"
  Then I should be on the edit page for "Cosmos"
  Then I should see "planetx, universe, galaxy"
  And I should see "ttssy"
  And I should see "Lorem ipsum dolor sit amet, his dicit quidam quaeque te, magna noluisse ea eam. Dicta nusquam tincidunt has at, posse scripta periculis duo in. Nec justo vitae sententiae at. Ex vel malis utroque hendrerit, eam modo iudico at. Has case definiebas ea, no ius decore adversarium."
  
  Given I am on the edit page for "Cosmos"
  When I fill in "category_name" with "Greek Mythology"
  And I fill in "category_keywords" with "kratos, zeus, poseidon"
  And I fill in "category_permalink" with "kkllp"
  And I fill in "category_description" with "Zeus was the god of the sky and ruler of the Olympian gods. He overthrew his father, Cronus, and then drew lots with his brothers Poseidon and Hades, in order to decide who would succeed their father on the throne. Zeus won the draw and became the supreme ruler of the gods, as well as lord of the sky and rain. His weapon was a thunderbolt which he hurled at those who displeased or defied him, especially liars and oathbreakers. He was married to Hera but often tested her patience, as he was infamous for his many affairs."
  And I press "Save"
  Then I should be on the new categories page
  And I should see "Greek Mythology"
  But I should not see "Cosmos"
  And I should see "Zeus was the god of the sky and ruler of the Olympian gods. He overthrew his father, Cronus, and then drew lots with his brothers Poseidon and Hades, in order to decide who would succeed their father on the throne. Zeus won the draw and became the supreme ruler of the gods, as well as lord of the sky and rain. His weapon was a thunderbolt which he hurled at those who displeased or defied him, especially liars and oathbreakers. He was married to Hera but often tested her patience, as he was infamous for his many affairs."
  But I should not see "Lorem ipsum dolor sit amet, his dicit quidam quaeque te, magna noluisse ea eam. Dicta nusquam tincidunt has at, posse scripta periculis duo in. Nec justo vitae sententiae at. Ex vel malis utroque hendrerit, eam modo iudico at. Has case definiebas ea, no ius decore adversarium."
  And I should see "kratos, zeus, poseidon"
  But I should not see "planetx, universe, galaxy"
  And I should see "kkllp"
  But I should not see "ttssy"
  