class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.references :package_type, index: true
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
