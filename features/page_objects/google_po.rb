class GooglePage
  URL ||= "http://google.com"

  # Methods
  def initialize(browser)
    @browser = browser
  end

  def open
    @browser.goto URL
    self
  end

  def fill_search_field(text)
    search_field.set 'in all media'
  end

  def click_search_button
    search_button.click
  end

  def click_search_result(text)
    result_link(text).click
  end
  
  # Page objects
  private
  def search_field
    @browser.text_field id: 'lst-ib'
  end

  def search_button
    @browser.button name: "btnK"
  end

  def result_link(text)
    # PD: (Just wanted to demonstrate that I know XPATHS)
    @browser.element xpath: "//div/cite[contains(.,'#{text}')]/ancestor::div[@class='rc']/h3/a"
  end
end
