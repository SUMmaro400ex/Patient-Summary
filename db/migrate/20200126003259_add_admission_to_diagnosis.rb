class AddAdmissionToDiagnosis < ActiveRecord::Migration[5.0]
  def change
    add_reference :diagnoses, :admission, foreign_key: true
  end
end
