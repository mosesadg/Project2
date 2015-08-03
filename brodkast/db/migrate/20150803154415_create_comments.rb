class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    t.string :text_body
    t.string :author
    t.string :date_created
    t.references :video, index: true, foreign_key: true

    end
  end
end
