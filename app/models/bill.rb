class Bill < ActiveRecord::Base
  belongs_to :body
  has_and_belongs_to_many :covers
  has_many :stances
  has_many :progresses
  has_one :foreignspirit
  has_one :citizenspirit
end
