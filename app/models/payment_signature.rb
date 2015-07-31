class PaymentSignature < ActiveRecord::Base
 attr_accessible :signature,:bluearc_payment_id
  belongs_to :bluearc_payment
  validates :bluearc_payment_id, presence: true
end
