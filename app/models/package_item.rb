class PackageItem < ActiveRecord::Base
  belongs_to :package
  #validates_formatting_of :link, using: :url
  acts_as_votable 
end
