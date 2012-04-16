class User < ActiveRecord::Base
  has_many :rsvps

  accepts_nested_attributes_for :rsvps 
  validates :fname,:lname, :presence => true
  
  def to_s
    "#{fname} #{lname}"
  end
end
