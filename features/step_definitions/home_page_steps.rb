
When("I'm at InllMedia homepage") do
  expect(site.home_page.home_page?).to be true
end

Then("I validate InAllMedia logo is present in the site") do
  expect(site.home_page.logo_visible).to be true
end
