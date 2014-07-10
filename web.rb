require 'sinatra'

def headless_test 
	"#{File.dirname(__FILE__)}/lib/google_headless"
end

set :public, "#{File.dirname(__FILE__)}/public"  

get '/' do
	require headless_test 
  "Testing a simple headless browser on Heroku. You should see a screenshot bellow, based on <a href='http://www.timeanddate.com/worldclock/uk/london'>http://www.timeanddate.com/worldclock/uk/london</a> website. <br><img src='screenshot.png' style='
    width: 500px;
    border-image: inherit;
    border: 1px solid #021a40;
'>"
end