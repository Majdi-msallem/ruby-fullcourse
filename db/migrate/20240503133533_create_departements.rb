class CreateDepartements < ActiveRecord::Migration[7.1]
  def change
    create_table :departements do |t|
      t.string :name

      t.timestamps
    end
  end
end
