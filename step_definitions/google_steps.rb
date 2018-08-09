Given("I navigate to google.com") do
   site.google_page.open
end

When("I fill in search input with {string}") do |text|
  site.google_page.fill_search_field(text)
end

When("I click the search button") do
  site.google_page.click_search_button
end

When("I click on the result for {string}") do |text|
  site.google_page.click_search_result(text)
end
