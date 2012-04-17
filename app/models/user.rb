class User < ActiveRecord::Base
  has_and_belongs_to_many :sessions

  validates :fname,:lname, :presence => true

  
  def to_s
    "#{fname} #{lname}"
  end

end
