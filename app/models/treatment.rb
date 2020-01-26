class Treatment < ApplicationRecord
	belongs_to :patient

	def to_string
		"#{description}, to, #{necessity}"
	end
end
