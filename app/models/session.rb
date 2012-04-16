class Session < ActiveRecord::Base
  belongs_to :event
  has_many :rsvp
  
  def formatteddate 
    date.strftime("%A %b. %d %Y %I:%M %p")
  end
end
