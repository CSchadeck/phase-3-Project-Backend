class Student < ActiveRecord::Base
    has_many :cards
    has_many :subjects, through: :cards

end