class Subject < ActiveRecord::Base
    has_many :cards
    has_many :students, through: :cards




end