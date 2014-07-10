require "watir-webdriver"

@b = Watir::Browser.new :phantomjs
@b.goto "http://www.timeanddate.com/worldclock/uk/london"
@b.screenshot.save "public/screenshot.png"
puts @b.title
@b.close