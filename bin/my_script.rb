require 'addressable/uri'
require 'rest-client'

def index_users
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s
  begin
    puts RestClient.get(url)
  rescue RestClient::Exception
    # something
  end
end

def create_user(name, email)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/users.json"
  ).to_s

  puts RestClient.post(url,
  {
    user:
    {
      name: name, email: email
    }
  })

end

def update_user(id, name, email)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/users/#{id}/"
  ).to_s

  puts RestClient.patch(url,
  {
    user:
    {
      name: name, email: email
    }
  })
end
