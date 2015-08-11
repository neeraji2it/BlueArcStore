class CartDetail < ActiveRecord::Base
  attr_accessible :email, :name, :phone_no
  validates :name,:phone_no, :presence => true
  validates :email, presence: true,
                    :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                    :message => 'is invalid!'},
                    :on => :create
end
