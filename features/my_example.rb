require_relative '../features/env'

class MyExample

  def open url
    SeleniumWebdriver.driver.navigate.to url
  end

  def enter_query query
    SeleniumWebdriver.driver.find_element(:id, 'lst-ib').send_keys query
    SeleniumWebdriver.driver_wait.until {
      SeleniumWebdriver.driver.find_element(:id, 'sblsbb').displayed?
    }
    SeleniumWebdriver.driver.find_element(:id, 'sblsbb').click
  end

  def click_on_first_result
    SeleniumWebdriver.driver_wait.until {
      SeleniumWebdriver.driver.find_element(:css,'.r>a').click
    }
    SeleniumWebdriver.driver.find_element(:css,'.r>a').click
  end

  def get_page_title
    SeleniumWebdriver.driver.title
  end
end