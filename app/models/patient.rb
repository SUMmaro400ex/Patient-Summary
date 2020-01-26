class Patient < ApplicationRecord
	enum gender: [:male, :female, :other]
	has_one :admission
	has_many :allergies
	has_many :diagnoses
	has_many :medication_orders
	has_many :diagnostic_procedures
	has_many :treatments
	alias_attribute :medications, :medication_orders

	def age
		((Time.zone.now - dob.to_time) / 1.year.seconds).floor 
	end

	def chronic_conditions
		diagnoses.select(&:is_patient_reported)
	end
end
