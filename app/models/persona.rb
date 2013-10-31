class Persona < ActiveRecord::Base
  belongs_to :user
  has_many :stances
  has_and_belongs_to_many  :covers
end
