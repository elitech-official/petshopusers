class Pet < ActiveRecord::Base
  belongs_to :user
  
  enum pet_type: [:dog, :cat, :fish, :giraffe]
  
  validates(
  :name, :age, :color, :pet_type, :presence => {:message => 'Cannot be blank!'}
  )
  
  validates :age, :inclusion => { in: 0..50, :message => "Unbelievable age"}
  
end
