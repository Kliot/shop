class AddPriceToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :price, 'decimal(8,2)'
  end
end
