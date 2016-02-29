class CreatePackageTypes < ActiveRecord::Migration
  def change
    create_table :package_types do |t|
      t.string :package_type
      t.text :description

      t.timestamps
    end
  end
end
