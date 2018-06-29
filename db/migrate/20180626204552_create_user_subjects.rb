class CreateUserSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :user_subjects do |t|
      t.integer :nrc
      t.integer :id_user

      t.timestamps
    end
  end
end
