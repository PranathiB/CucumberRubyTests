require 'selenium-webdriver'
require 'rubygems'


class SeleniumWebdriver
  class << self

    def driver
      @web_driver ||= Selenium::WebDriver.for :firefox
    end

    def driver_wait
      @web_driver_wait ||= Selenium::WebDriver::Wait.new(:timeout => 10)
    end
  end

end
