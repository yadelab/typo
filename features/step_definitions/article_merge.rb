Given /^2 articles with similar content exist$/ do
	steps %{
		Given I am on the new article page
	    When I fill in "article_title" with "Game of Thrones"
	    And I fill in "article__body_and_extended_editor" with "lorem"
	    And I press "Publish"
	    
	    Given I am on the new article page
	    When I fill in "article_title" with "A song of Ice and Fire"
	    And I fill in "article__body_and_extended_editor" with " ipsum"
	    And I press "Publish"
	}
end