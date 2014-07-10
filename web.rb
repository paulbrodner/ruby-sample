require 'sinatra'
require 'sinatra/flash'

def headless_test 
	"#{File.dirname(__FILE__)}/lib/google_headless.rb"
end

set :public, "#{File.dirname(__FILE__)}/public"  

get '/' do
	flash[:blah] = "#{Time.now} - Please wait until the headless browser will finish the process."
	load headless_test
  "Testing a simple headless browser on Heroku. You should see a screenshot bellow, based on <a href='http://www.timeanddate.com/worldclock/uk/london'>http://www.timeanddate.com/worldclock/uk/london</a> website. <br><img src='screenshot.png' style='
    width: 500px;
    border-image: inherit;
    border: 1px solid #021a40;
'>"
end