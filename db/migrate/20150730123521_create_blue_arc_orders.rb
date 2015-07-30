class CreateBlueArcOrders < ActiveRecord::Migration
  def change
    create_table :blue_arc_orders do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :address
      t.string  :city
      t.string  :state
      t.string  :country
      t.string  :phone
      t.string  :postal_code
      t.string  :card_type
      t.date    :card_expires_on
      t.decimal :amount
      t.boolean :success
      t.string  :authorization
      t.text    :message
      t.text    :params
      t.timestamps
    end
  end
end
