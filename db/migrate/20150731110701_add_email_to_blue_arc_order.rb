class AddEmailToBlueArcOrder < ActiveRecord::Migration
  def change
    add_column :blue_arc_orders, :email, :string
  end
end
