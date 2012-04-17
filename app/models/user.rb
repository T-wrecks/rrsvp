class User < ActiveRecord::Base
  has_many :rsvps


  validates :fname,:lname, :presence => true

  
  def to_s
    "#{fname} #{lname}"
  end

end
