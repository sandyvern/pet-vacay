class Profile < ApplicationRecord
  belongs_to :user
  
  validates_presence_of :bio
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zipcode
	validates_presence_of :user_id

end
