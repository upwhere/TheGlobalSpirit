class Cover < ActiveRecord::Base
  has_and_belongs_to_many :personas
  has_and_belongs_to_many :bills
end
