class User < ActiveRecord::Base
  attr_accessible :email, :nickname, :phone_number, :password
end
