class School < ApplicationRecord
	has_many :courses
	has_many :rooms
end
