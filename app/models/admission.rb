class Admission < ApplicationRecord
	has_many :diagnoses
	has_many :symptoms
	has_many :observations
	belongs_to :patient

	def date
		moment.strftime('%B %d, %Y,')
	end

	def time
		moment.strftime('%l:%M %P')
	end
end
