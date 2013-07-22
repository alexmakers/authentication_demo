require 'data_mapper'
require 'digest'

class User
  include DataMapper::Resource

  property :id,                Serial
  property :email,             String
  property :hashed_password,   String, length: 255
    
  def self.login(email, pwd)
    hashed = Digest::SHA256.hexdigest 'makers academy is cool' + pwd
    
    first(email: email, hashed_password: hashed)
  end
  
  def password=(pwd)
    self.hashed_password = Digest::SHA256.hexdigest 'makers academy is cool' + pwd
  end
end