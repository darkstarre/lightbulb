class Idea < ActiveRecord::Base
  has_many :comments
  belongs_to :users
end
