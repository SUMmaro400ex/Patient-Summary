class CreateAllergies < ActiveRecord::Migration[5.0]
  def change
    create_table :allergies do |t|
      t.text :description

      t.timestamps
    end
  end
end
