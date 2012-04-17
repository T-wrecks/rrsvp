class Rsvp < ActiveRecord::Base
  belongs_to :user
  belongs_to :session, :validate => true
  
  validates :session_id, :presence => true
  accepts_nested_attributes_for :user 
end
