class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :published_status
    end
  end
end
