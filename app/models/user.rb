class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :profile
         
  validates_presence_of :name, :email, :password
         
  # def first_name
  #   self.name.split.first
  # end
  
  # def last_name
  #   self.name.split.last
  # end
end
