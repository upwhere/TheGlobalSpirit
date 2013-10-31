class Progress < ActiveRecord::Base
  belongs_to :bill
  has_one :result
end
