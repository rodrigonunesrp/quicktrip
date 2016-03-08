class CreatePackageItens < ActiveRecord::Migration
  def change
    create_table :package_items do |t|
      t.string :item
      t.text :link
      t.text :description
      t.references :package, index: true
      t.timestamps
    end
  end
end
