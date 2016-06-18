class User < ActiveRecord::Base
    has_many :tweets 
  validates :name, presence:true
  validates :password, presence:true, length: { minimum:6}

end
