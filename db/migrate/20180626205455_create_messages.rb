class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :text
      t.string :title
      t.integer :id_emi
      t.integer :id_recep


      t.timestamps
    end
  end
end
