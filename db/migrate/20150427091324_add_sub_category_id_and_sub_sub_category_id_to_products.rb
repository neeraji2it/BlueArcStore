class AddSubCategoryIdAndSubSubCategoryIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sub_category_id, :integer
    add_column :products, :sub_sub_category_id, :integer
  end
end
