class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :description
      t.boolean :projector
      t.integer :seats

      t.timestamps
    end
  end
end
