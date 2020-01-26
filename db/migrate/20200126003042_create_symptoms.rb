class CreateSymptoms < ActiveRecord::Migration[5.0]
  def change
    create_table :symptoms do |t|
      t.text :description

      t.timestamps
    end
  end
end
