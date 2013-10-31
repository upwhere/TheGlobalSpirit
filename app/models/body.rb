class Body < ActiveRecord::Base
  has_and_belongs_to_many :regions
  has_many :bills
  has_many :results
  # has_and_belongs_to_many :political_figures
end
