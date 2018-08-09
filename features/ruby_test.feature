Feature: Validate navigation from google to main page
	As an application user I want my webpage to be present in google results when searched
    Owner: Anthony Fuentes
    TC ID: 001
	
	Background:
		Given I navigate to google.com

	Scenario: Verify navigation from Google
		When I fill in search input with "in all media"
			And I click the search button
			And I click on the result for "inallmedia.com"
		
		When I'm at InllMedia homepage
			Then I validate InAllMedia logo is present in the site
