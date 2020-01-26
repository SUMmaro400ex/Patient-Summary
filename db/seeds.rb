# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Facility.create(name: 'Blue Alps Ski Camp')
Patient.create(
	first_name: 'Thomas',
	last_name: 'Schudel',
	mr: '30997',
	dob: DateTime.now - 43.years,
	gender: 0
) do |patient|
	Treatment.create(description: 'temporary bracing the right leg', necessity: 'restrict the motion', patient: patient)
	DiagnosticProcedure.create(description: 'exploratory radiography', moment:  DateTime.new(2018,2,18,17,15), patient: patient)
	MedicationOrder.create(name: 'Acetaminophen', dosage: 500, unit: 0, route: 0, necessity: 'relieve pain', patient: patient) do |medication_order|
		OrderFrequency.create(value: 'q4', unit: 0, medication_order: medication_order)
	end
	Diagnosis.create(description: ' Asthma', code:'(J45)', is_patient_reported: true, patient: patient)
	MedicationOrder.create(name: 'Naproxen', dosage: 500, unit: 0, route: 0, necessity: 'relieve swelling', patient: patient) do |medication_order|
		OrderFrequency.create(value: 'q6', unit: 0, medication_order: medication_order)
	end
	Allergy.create(description: 'hypersensitivity to aspirin or NSAIDs', patient: patient)
	Allergy.create(description: 'gluten intolerance', patient: patient)
	Admission.create(patient: patient, moment:  DateTime.new(2018,2,18,17,07)) do |admission|
		Observation.create(description: 'No soft tissues were damaged', admission: admission)
		Symptom.create(description: 'severe pain', admission: admission)
		Symptom.create(description: 'swelling', admission: admission)
		Symptom.create(description: 'limited bending of the joint', admission: admission)
		Diagnosis.create(description: 'a fracture of upper end of the right tibia', code: '(S82.101)', admission: admission)
	end
end

