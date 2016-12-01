require 'httparty'

class UserAuth

  def initialize(url)
    @url = url
  end
  
  def CreateUser(user, password)
    response = HTTParty.post(@url, :query => {:email => user, :password => password})
    if response.success?
      puts "User #{user} created"
      return {:user => user, :token => response.headers["access-token"]}
    else
      puts response.parsed_response["errors"]["full_messages"]
    end
  end

  def SignIn(user, password)
    
  end

  def ValidToken?(token, uid, client)
    
  end
end

Auth = UserAuth.new("http://localhost:9000/auth")
response = Auth.CreateUser("test2@test.com", "12345678")
puts response
