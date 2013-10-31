class Voter < ActiveRecord::Base
  has_and_belongs_to_many :regions
  belongs_to :user
end
