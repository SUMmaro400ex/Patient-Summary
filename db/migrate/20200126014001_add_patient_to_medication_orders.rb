class AddPatientToMedicationOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :medication_orders, :patient, foreign_key: true
  end
end
