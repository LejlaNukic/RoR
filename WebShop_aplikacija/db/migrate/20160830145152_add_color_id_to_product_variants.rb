class AddColorIdToProductVariants < ActiveRecord::Migration
  def change
    add_column :product_variants, :color_id, :integer
    add_index :product_variants, :color_id
  end
end
