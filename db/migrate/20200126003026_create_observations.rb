class CreateObservations < ActiveRecord::Migration[5.0]
  def change
    create_table :observations do |t|
      t.text :description
      t.datetime :moment

      t.timestamps
    end
  end
end
