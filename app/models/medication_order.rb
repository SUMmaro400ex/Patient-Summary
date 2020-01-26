class MedicationOrder < ApplicationRecord
	enum unit: [:mg]
	enum route: [:PO, :IM, :SC]
	has_one :order_frequency
	belongs_to :patient

	def to_string
		"#{name} #{dosage.to_s}#{unit} #{route} #{order_frequency.value}#{order_frequency.unit} to #{necessity}"
	end
end
