module LoadsHelper
    
    
def loading
    
  uri = URI::HTTPS.build(:host => "www.waboxapp.com", :port => 80) 
  uri.path = URI.escape("/api/send/chat") 
  client = Net::HTTP.new("www.waboxapp.com", "80") 
  req = Net::HTTP::Post.new(uri.request_uri, {}) 
  req.set_form_data({"token" => "my-test-api-key", "uid" => "22997505882", "to" => "22997505882", "custom_uid" => "msg-9354", "text" => "Hello world!"}) 
  res = client.request(req)
  puts res.code
  puts 'rerererere'




end    
    
    
    
    
    
end
