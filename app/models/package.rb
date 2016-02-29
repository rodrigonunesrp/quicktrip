class Package < ActiveRecord::Base
  belongs_to :package_type
  validates_formatting_of :link, using: :url
  acts_as_votable 
end
