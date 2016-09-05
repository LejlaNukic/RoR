class AddProductIdToProductVariants < ActiveRecord::Migration
  def change
    add_column :product_variants, :product_id, :integer
    add_index :product_variants, :product_id
  end
end
