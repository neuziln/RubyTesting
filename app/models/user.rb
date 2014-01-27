class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  								:first_name, :last_name, :profile_name
  								
  validates :first_name, presence: true,
  										   length: {minimum: 2}							
  validates :last_name, presence: true,
  										  length: {minimum: 2}
  validates :profile_name, presence: true,
  											   uniqueness: true,
<<<<<<< HEAD
  											   format: {
  											   with: /\A[a-zA-Z\-\_]+\Z/,
  											   message: "must be formatted correctly."
  											  }
=======
  										     length: {minimum: 2},
  										     format: {
  										     		with: /\A[a-zA-Z0-9]+\Z/,
  										     		message: "can not contain special characters or spaces"
  										     	}
                          
  										     
  											   
>>>>>>> ca630b3f2a1d7b1a4ec6676f084cb2eca7e0c63d
  			
  has_many :statuses
  
  def full_name
  	first_name + " " + last_name
  end
end
