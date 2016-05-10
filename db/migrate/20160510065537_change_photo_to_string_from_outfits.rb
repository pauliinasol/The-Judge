class ChangePhotoToStringFromOutfits < ActiveRecord::Migration
  def change
    change_column :outfits, :photo, :string
  end
end
