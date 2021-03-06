class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable
  
  has_many :games
  has_one :ranking
   
  def self.oponents(user)
    return User.where("id != ?", user.id)
  end
  
end
