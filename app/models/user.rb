class User < ActiveRecord::Base
  has_one :voter
  has_many :personas
  has_one :behaviour
end
