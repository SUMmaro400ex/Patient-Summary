class CreateTreatments < ActiveRecord::Migration[5.0]
  def change
    create_table :treatments do |t|
      t.text :description
      t.text :necessity

      t.timestamps
    end
  end
end
