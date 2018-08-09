require_relative 'google_po'
require_relative 'home_po'

# Site class is instantiated from env.rb file
# Site is a helper class used to access the page object clases
class Site

  def initialize(browser)
    @browser = browser
  end

  def google_page
    GooglePage.new(@browser)
  end

  def home_page
    HomePage.new(@browser)
  end

  def close
    @browser.close
  end
end
