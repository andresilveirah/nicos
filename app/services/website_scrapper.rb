class WebsiteScrapper
  attr_reader :website

  def initialize(website, driver = Mechanize.new, url_validator = Validators::Url)
    @website = website
    @driver  = driver
    @url_validator = url_validator
  end

  def go_get_it
    if @url_validator.valid?(website.url)
      page = @driver.get(website.url)
      set_title(page)
    end
    website
  end

  private

  def set_title(page)
    website.title = page.title
  end
end
