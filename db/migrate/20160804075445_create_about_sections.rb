class CreateAboutSections < ActiveRecord::Migration[5.0]
  def up
    create_table :about_sections do |t|
      t.string :main_title
      t.string :second_title
      t.text :description
      t.timestamps

    end
  end
  def down
    drop_table :about_sections
  end
end
