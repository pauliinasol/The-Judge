class CreateLoginTests < ActiveRecord::Migration
  def change
    create_table :login_tests do |t|

      t.timestamps null: false
    end
  end
end
