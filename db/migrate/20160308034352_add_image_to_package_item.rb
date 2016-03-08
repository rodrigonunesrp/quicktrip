class AddImageToPackageItem < ActiveRecord::Migration
  def change
    add_column :package_items, :image, :string
  end
end
