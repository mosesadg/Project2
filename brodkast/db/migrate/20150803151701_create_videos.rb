class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :subject
      t.string :video_url
      t.string :author
      t.string :date_created
      t.integer :likes
    end
  end
end
