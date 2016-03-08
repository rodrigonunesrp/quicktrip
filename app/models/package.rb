class Package < ActiveRecord::Base
  belongs_to :package_type
  has_many :package_items
  #accepts_nested_attributes_for :photos, :allow_destroy => true
  #validates_formatting_of :link, using: :url
  acts_as_votable 
end
