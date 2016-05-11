class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :outfit_id
      t.string :integer
      t.string :like_count
      t.string :integer

      t.timestamps null: false
    end
  end
end
