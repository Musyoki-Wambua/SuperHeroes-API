class Hero < ApplicationRecord
    has_many :hero_powers
    has_many :powers, through: :hero_powers

    validates :strength, inclusion: { in: [ 'Strong', 'Weak', 'Average' ]} 
end
