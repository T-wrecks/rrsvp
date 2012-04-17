class Session < ActiveRecord::Base
  belongs_to :event
  has_many :rsvp
  
  validates :event_id, :presence => true
  
  def formatteddate 
    date.strftime("%A %b. %d %Y %I:%M %p")
  end
end
