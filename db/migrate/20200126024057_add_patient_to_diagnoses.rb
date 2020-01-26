class AddPatientToDiagnoses < ActiveRecord::Migration[5.0]
  def change
    add_reference :diagnoses, :patient, foreign_key: true
  end
end
