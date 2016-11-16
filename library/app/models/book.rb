class Book < ActiveRecord::Base
  has_many :reservations
end
