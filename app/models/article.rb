class Article < ActiveRecord::Base
  has_many :categories
  
  validates_presence_of :title
  validates_presence_of :content
  
  scope :alphabetical, order('title')
  scope :active, where('active = ?', true)
end
