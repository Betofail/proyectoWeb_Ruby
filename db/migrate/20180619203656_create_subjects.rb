class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.integer :nrc
      t.string :name
      t.integer :id_user

      t.timestamps
    end
  end
end
