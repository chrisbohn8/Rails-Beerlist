class Beer < ApplicationRecord
	validates :name, presence: true
	validates :tagline, presence: true
	validates :abv, presence: true
	validates :tier, presence: true
	validates :image, presence: true
end
