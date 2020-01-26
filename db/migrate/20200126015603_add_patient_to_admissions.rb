class AddPatientToAdmissions < ActiveRecord::Migration[5.0]
  def change
    add_reference :admissions, :patient, foreign_key: true
  end
end
