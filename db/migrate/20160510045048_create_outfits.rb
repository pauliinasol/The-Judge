class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.integer :user_id
      t.integer :occasion_id
      t.integer :rating_id
      t.text :photo
      t.timestamp :start_datetime
      t.timestamp :end_datetime

      t.timestamp null: false
    end
  end
end
