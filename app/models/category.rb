class Category < ActiveRecord::Base
  has_many :photos
   belongs_to :article
  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
end
