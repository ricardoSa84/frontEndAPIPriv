class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :country
      t.string :distric
      t.string :city
      t.string :county
      t.string :postCode
      t.string :addressDetails

      t.timestamps
    end
  end
end
