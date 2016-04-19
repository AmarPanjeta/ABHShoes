class PageContainer

  def initialize(browser)
    @browser = browser
  end

  def get_browser
    return @browser
  end

  def goto_home
    @browser.goto("http://abh-shoes-2016.herokuapp.com/") 
  end

  def close
    @browser.close 
  end
  
end