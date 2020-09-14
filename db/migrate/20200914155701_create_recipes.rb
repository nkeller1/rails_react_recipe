class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :ingredients, null: false
      t.text :instruction, null: false
      t.string :image, defualt: 'https://cdn.pixabay.com/photo/2014/06/11/17/00/cook-366875__340.jpg'

      t.timestamps
    end
  end
end
