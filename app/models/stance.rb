class Stance < ActiveRecord::Base
  belongs_to :persona
  belongs_to :bill
end
