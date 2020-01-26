class RemoveFrequencyFromMedicationOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :medication_orders, :frequency, :integer
  end
end
