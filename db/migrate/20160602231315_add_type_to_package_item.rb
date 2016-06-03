class AddTypeToPackageItem < ActiveRecord::Migration
  def change
    add_column :package_items, :pack_type, :integer, default: 1 
  end
end
