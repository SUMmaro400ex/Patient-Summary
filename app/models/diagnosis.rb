class Diagnosis < ApplicationRecord
	belongs_to :patient, optional: true
	belongs_to :admission, optional: true

	def described_code
		description + ' ' + code 
	end
end
