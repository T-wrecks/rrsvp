class Session < ActiveRecord::Base
  belongs_to :event
  has_and_belongs_to_many :users
  attr_accessible :id
  validates :event_id, :presence => true
  
  def formatteddate 
    date.strftime("%A %b. %d %Y %I:%M %p")
  end
end
