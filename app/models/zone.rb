class Zone < ApplicationRecord
	has_many :utcs

	validates :value, :abbr, :offset, :text, presence: true
end
