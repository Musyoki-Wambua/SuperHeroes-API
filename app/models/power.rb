class Power < ApplicationRecord
    has_many :heros, through: :hero_powers
    has_many :hero_powers 
end
