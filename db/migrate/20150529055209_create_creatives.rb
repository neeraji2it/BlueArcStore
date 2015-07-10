class CreateCreatives < ActiveRecord::Migration
  def change
    create_table :creatives do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :space
      t.decimal :budget, :precision => 10, :scale => 0
      t.timestamps
    end
  end
end
