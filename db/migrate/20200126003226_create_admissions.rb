class CreateAdmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :admissions do |t|
      t.datetime :moment

      t.timestamps
    end
  end
end
