class Airline < ApplicationRecord
    has_many :tickets
    has_many :travelers, through: :tickets
end
