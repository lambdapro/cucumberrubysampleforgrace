require 'rspec'
require 'selenium-cucumber'
require 'appium_lib'


username= ENV["LT_USERNAME"] || "{username}"
accessToken= ENV["LT_ACCESS_KEY"] || "{accessToken}"
hub="mobile-hub.lambdatest.com/wd/hub"
location_map = {"lat" => 28.7041, "long" => 277.1025}
caps={"deviceName"=>"Pixel 4","project"=>"First Cucumber Android Project", "isRealMobile"=>true, "app"=>"lt://APP10012371651265009437245", "build"=>"Grace","platformName"=>"Android", "name"=>"parallel_test_2","location"=>location_map}

puts (caps)


desired_caps = {
  caps: caps,
  appium_lib: {
    server_url: "https://"+username+":"+accessToken+"@"+hub
  }
}

begin
  $appium_driver = Appium::Driver.new(desired_caps, true)
  $driver = $appium_driver.start_driver
rescue Exception => e
  puts e.message
  Process.exit(0)
end

$wait = Selenium::WebDriver::Wait.new(:timeout => 30)
