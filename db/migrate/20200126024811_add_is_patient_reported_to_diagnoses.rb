class AddIsPatientReportedToDiagnoses < ActiveRecord::Migration[5.0]
  def change
    add_column :diagnoses, :is_patient_reported, :boolean
  end
end
