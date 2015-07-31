class BluearcPayment < ActiveRecord::Base
  attr_accessible :amount, :product_name, :customer_name,:is_signed, :date_of_birth, :address, :city, :state, :post_code, :country, :phone, :email, :card_number, :card_expiry, :card_cvv,:token,:ip_address
  has_one :payment_signature, :dependent => :destroy
  validates :amount, :product_name, :customer_name, :address, :city, :state, 
  :post_code, :country,  :phone, :card_expiry,  
  :date_of_birth, presence: true
  validates :amount,  numericality: { only_float: true }
  validates :email, presence: true,
  :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
    :message => 'is invalid!'},
    :on => :create
    def self.search(search)
      if search
       find(:all, :conditions => ['customer_name LIKE ?', "%#{search}%"])
     else
      :all
    end
  end

end






