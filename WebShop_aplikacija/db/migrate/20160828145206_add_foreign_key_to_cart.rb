class AddForeignKeyToCart < ActiveRecord::Migration
  def change
  	add_reference :carts,:user,index:true
  end
end
