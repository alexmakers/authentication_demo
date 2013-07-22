require 'data_mapper'

class User
  include DataMapper::Resource

  property :id,         Serial
  property :email,      String
  
  def self.login(email)
    first(email: email)
  end
end