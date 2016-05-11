class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.string :occasion_name

      t.timestamps null: false
    end
  end
end
