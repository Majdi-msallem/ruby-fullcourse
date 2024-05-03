class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content

      #addForiegn_Key of Student
      t.integer :student_id

      t.timestamps
    end
  end
end
