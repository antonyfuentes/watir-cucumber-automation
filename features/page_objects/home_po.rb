class HomePage
  URL ||= "http://www.inallmedia.com/"

  # Methods
  def initialize(browser)
    @browser = browser
  end

  def open
    @browser.goto URL
    self
  end

  def home_page?
    @browser.url == URL
  end

  def logo_visible
    Watir::Wait.until { company_logo.present? }
  end
  
  # Page objects
  private
  def search_button
    @browser.button name: "btnK"
  end

  def company_logo
    # PD: (Just wanted to demonstrate that I know CSS)
    @browser.element css: "div.et_pb_section img[src*='IAM-LOGO.svg']"

    # An alternative could be this: 
    # browser.img(:class => "wp-image-46842")
  end
end
