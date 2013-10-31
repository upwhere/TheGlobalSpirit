class Result < ActiveRecord::Base
  belongs_to :progress
  belongs_to :body
end
