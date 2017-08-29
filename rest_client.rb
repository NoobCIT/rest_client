require 'rest-client'

def search
  puts "What do you want to search?"
  input = gets.chomp.split.join('+')
end

def bing(search)
  RestClient.get("http://www.bing.com/search?q=#{search}")
end

def app
  response = bing(search)
  puts "The response code is #{response.code}"
  puts "The response cookies is #{response.cookies}"
  puts "The response header is #{response.headers}"
  puts "The response body is #{response.body}"
end

app #run
