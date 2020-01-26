class DiagnosticProcedure < ApplicationRecord
	belongs_to :patient

	def to_string
		"#{description} on, #{date} at #{time}"
	end

	def date
		moment.strftime('%B %d, %Y,')
	end

	def time
		moment.strftime('%l:%M %P')
	end
end
