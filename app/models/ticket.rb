class Ticket < ApplicationRecord
  belongs_to :airline
  belongs_to :traveler
end
