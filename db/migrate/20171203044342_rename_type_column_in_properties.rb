class RenameTypeColumnInProperties < ActiveRecord::Migration[5.1]
  def change
    rename_column :properties, :type, :property_type
  end
end
