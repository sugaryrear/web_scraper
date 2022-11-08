require 'watir'

browser = Watir::Browser.start 'https://codetest2.services.mdxdata.com/'
wait = Selenium::WebDriver::Wait.new(:timeout => 1000)

#Get all link texts as an array
browser.links.collect(&:text)
sleep 5
length = browser.links.length
puts length
i = 0
#Click the second link
wait.until {

while i < browser.links.length do
  puts browser.links[i].href
  browser.links[i].click
  i += 1
  break if i == browser.links.length
end
}
