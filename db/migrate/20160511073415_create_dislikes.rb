class CreateDislikes < ActiveRecord::Migration
  def change
    create_table :dislikes do |t|
      t.string :outfit_id
      t.string :integer
      t.string :dislike_count
      t.string :integer

      t.timestamps null: false
    end
  end
end
