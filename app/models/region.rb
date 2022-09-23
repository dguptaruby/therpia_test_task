class Region < ApplicationRecord
	has_many :user_regions, dependent: :destroy
end
