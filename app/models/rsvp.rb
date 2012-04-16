class Rsvp < ActiveRecord::Base
  belongs_to :user
  belongs_to :session
  
  validates :session_id, :user_id, :presence => true
end
