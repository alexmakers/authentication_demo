require 'data_mapper'
require './lib/user'

DataMapper.setup(:default, 'sqlite:///Users/gwu/Documents/authentication_demo/sqlite.db')
DataMapper.finalize