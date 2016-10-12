Then /^I fill in "(.*?)" with: (.*)$/ do |text|
  text_list = text.gsub(" ", "").split(",")
  text_list.each do |text|
      if page.respond_to? :should
        page.should have_content(text)
      else
        assert page.has_content?(text)
    end
  end
end