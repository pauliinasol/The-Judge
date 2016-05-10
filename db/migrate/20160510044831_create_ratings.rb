class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :outfit_id
      t.integer :positive
      t.integer :negative

      t.timestamps null: false
    end
  end
end
