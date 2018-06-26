class CreateRols < ActiveRecord::Migration[5.0]
  def change
    create_table :rols do |t|
      t.integer :id_user
      t.string :tipo

      t.timestamps
    end
  end
end
