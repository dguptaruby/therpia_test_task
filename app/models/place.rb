class Place < ApplicationRecord
	has_one :node, dependent: :destroy
	belongs_to :company
	accepts_nested_attributes_for :node
end
