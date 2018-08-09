require "watir"

# Provide path to binary of the chrome driver to selenium, to be then used by watir.
Selenium::WebDriver::Chrome.driver_path = File.join(File.absolute_path(File.dirname(__FILE__)), "drivers", "chromedriver")

module SiteHelper
  def site
    @site ||= (
      Site.new(Watir::Browser.new :chrome)
    )
  end
end

World(SiteHelper)