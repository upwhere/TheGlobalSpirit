class Region < ActiveRecord::Base
  has_and_belongs_to_many  :voters
  has_many :bodies
  # has_and_belongs_to_many :regions
end
