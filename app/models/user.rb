class User < ActiveRecord::Base
  has_and_belongs_to_many :sessions
  accepts_nested_attributes_for :sessions
  
  validates :fname,:lname, :session_ids, :presence => true

  
  def to_s
    "#{fname} #{lname}"
  end

end
