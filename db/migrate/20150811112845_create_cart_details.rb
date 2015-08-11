class CreateCartDetails < ActiveRecord::Migration
  def change
    create_table :cart_details do |t|
      t.string :name
      t.string :phone_no
      t.string :email

      t.timestamps
    end
  end
end
