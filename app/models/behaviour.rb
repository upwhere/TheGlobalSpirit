class Behaviour < ActiveRecord::Base
  belongs_to :user
  has_many :ipaddresses
end
