class User < ActiveRecord::Base
    has_many :tweets
    has_many :parts
    has_many :movies, through: :parts

  validates :name, presence:true
  validates :password, presence:true, length: { minimum:6}

end
