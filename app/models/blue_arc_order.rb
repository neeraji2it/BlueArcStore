class BlueArcOrder < ActiveRecord::Base
  include ActiveMerchant::Billing
  attr_accessible :amount, :first_name, :authorization, :params, :success, :message, :last_name, :address, :city, :state, :country, :postal_code, :phone, :card_type, :card_number, :card_expires_on, :card_verification
  serialize :params
  
  attr_accessor :card_number, :card_verification
  validates :address, :postal_code, :city, :state, :phone,:presence => true
  validate :validate_card
  validates_numericality_of :card_number
  
  def purchase
    begin
      process_payment
    rescue => e
      logger.error("#{self.id} failed with error message #{e} ")
      self.update_attributes(:amount => self.amount, :success => false, :message => e)
    end
    save!
  end
  
  protected
  
  def process_payment
    ActiveMerchant::Billing::Base.mode = :production
    if credit_card.valid?
      options = purchase_options
      gateway = AuthorizeNetGateway.new({:login => '5Fq93Cd2m', :password=> '7wk8J6GJ4Est587z'})
      response = gateway.purchase(self.amount*100, credit_card, options)
      if response.success?
        self.update_attributes(:amount => self.amount, :success => response.success?, :authorization => response.authorization, :message => response.message, :params => response.params)
      else
        self.update_attributes(:amount => self.amount, :success => response.success?, :authorization => response.authorization, :message => response.message, :params => response.params)
      end
    else
      self.update_attributes(:amount => self.amount, :success => false, :message => "Invalid credit card.")
    end
  end
  
  private
  def purchase_options
    {
      :card_code => self.card_verification,
      :order_id => self.id,
      :description => "BLUEARC contract",
      :billing_address => {
        :first_name    => first_name, 
        :last_name     => last_name, 
        :address1       => address, 
        :city          => city, 
        :state         => state, 
        :zip           => postal_code,
        :phone         => phone
      }
    }
  end
  
  def validate_card
    if !credit_card.valid?
      credit_card.errors.full_messages.each do |message|
        errors.add(:base, message)
      end
    end
  end
  
  def credit_card
    @credit_card ||= ActiveMerchant::Billing::CreditCard.new(
      :brand => card_type,
      :number => card_number,
      :verification_value => card_verification,
      :month => card_expires_on.month,
      :year => card_expires_on.year,
      :first_name => first_name,
      :last_name => last_name
    )
  end
end
