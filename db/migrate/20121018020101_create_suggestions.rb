class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.references :playlist_request
      t.text :body
      t.references :user
			
      t.timestamps
    end
    add_index :suggestions, :playlist_request_id
    add_index :suggestions, :user_id
  end
end
