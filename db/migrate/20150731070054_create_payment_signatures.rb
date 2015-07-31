class CreatePaymentSignatures < ActiveRecord::Migration
  def change
    create_table :payment_signatures do |t|
       t.references :bluearc_payment, index: true
      t.text :signature
      t.timestamps
      t.timestamps
    end
  end
end
