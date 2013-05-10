class Post < ActiveRecord::Base
  attr_accessible :content, :title

  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  validates :content, :presence => true,
                    :length => { :minimum => 15 }

  has_many :comments, :dependent => :destroy
end
