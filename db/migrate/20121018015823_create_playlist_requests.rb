class CreatePlaylistRequests < ActiveRecord::Migration
  def change
    create_table :playlist_requests do |t|
      t.references :category
      t.references :user
      t.string :title
      t.text :body
      t.datetime :published_date

      t.timestamps
    end
    add_index :playlist_requests, :category_id
    add_index :playlist_requests, :user_id
  end
end
