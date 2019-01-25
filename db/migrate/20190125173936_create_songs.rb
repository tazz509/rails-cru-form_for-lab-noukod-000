class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :published_status
    end
  end
end
