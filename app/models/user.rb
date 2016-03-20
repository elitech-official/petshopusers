class User < ActiveRecord::Base
  
  has_many :pets, :dependent => :destroy
  
  enum sex: [:male, :female]
  
  self.per_page = 2;
  
  validates(
  :name, :age, :email, :sex, :presence => {:message => 'Cannot be blank!'}
  )
  
  validates :sex, :inclusion => { in: %w{male female}, :message => "Wrong sex!" }
  
  validates :age, :inclusion => {in: 0..100, :message => "Age should be in 0 - 100 years"}
  
end
