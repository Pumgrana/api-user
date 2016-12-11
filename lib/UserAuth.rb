require 'httparty'

class UserAuth

  def initialize(url)
    @url = url
  end
  
  def CreateUser(user, password)
    response = HTTParty.post(@url + "auth", :query => {:email => user, :password => password})
    if response.success?
      return true, response.headers["access-token"]
    else
      return false, response.parsed_response["errors"]["full_messages"]
    end
  end

  def SignIn(user, password)
    response = HTTParty.post(@url + "sign_in", :query => {:email => user, :password => password})
    if response.success?
      return true, response.headers["access-token"]
    else
      return false, response.parsed_response
    end
  end
  
  def ValidToken?(token, uid, client)
    
  end
end

Auth = UserAuth.new("http://localhost:9000/")
ok, response = Auth.CreateUser("test2@test.com", "12345678")
if ok == true
  puts "User created (" + response.to_s + ")"
else
  puts "User already created (" + response.to_s + ")"
end
ok, response = Auth.SignIn("test2@test.com", "12345678")
if ok == true
  puts "User signed in"
else
  puts "Error : " + response.to_s
end
