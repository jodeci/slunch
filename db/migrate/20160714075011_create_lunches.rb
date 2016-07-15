class CreateLunches < ActiveRecord::Migration[5.0]
  def change
    create_table :lunches do |t|
      t.string :name
      t.string :location
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
