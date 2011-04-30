class Article < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness => true
  has_many :comments, dependent => :destroy
end
