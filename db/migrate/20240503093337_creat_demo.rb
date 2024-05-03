class CreatDemo < ActiveRecord::Migration[7.1]
  def change

    add_column :demos, :description, :string
    add_column :demos, :name, :string
  end
end
