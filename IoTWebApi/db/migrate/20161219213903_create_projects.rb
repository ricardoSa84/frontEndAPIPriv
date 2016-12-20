class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :grade
      t.references :discipline, foreign_key: true

      t.timestamps
    end
  end
end
