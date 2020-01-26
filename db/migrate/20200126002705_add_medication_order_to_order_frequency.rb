class AddMedicationOrderToOrderFrequency < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_frequencies, :medication_order, foreign_key: true
  end
end
