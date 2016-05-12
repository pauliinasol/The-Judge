class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :user_id
      t.string :integer
      t.string :occasion_id
      t.string :integer
      t.string :like_id
      t.string :integer
      t.string :dislike_id
      t.string :integer
      t.string :photo
      t.string :string
      t.string :start_datetime
      t.string :timestamp
      t.string :end_datetime
      t.string :timestamp

      t.timestamps null: false
    end
  end
end
