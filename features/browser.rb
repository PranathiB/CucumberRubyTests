require 'selenium-webdriver'

class Browser
  def initialize()
    @driver = Selenium::WebDriver.for :firefox
  end
end