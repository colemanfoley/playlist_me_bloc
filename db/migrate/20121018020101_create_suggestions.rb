class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.references :category
      t.string :name
      t.string :email
      t.text :body
      t.references :user

      t.timestamps
    end
    add_index :suggestions, :category_id
    add_index :suggestions, :user_id
  end
end
