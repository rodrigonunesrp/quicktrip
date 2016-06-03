class PackageItem < ActiveRecord::Base
  # type -> 1: open link in another page | 2: open package_item show page using link in iframe (used for hotel por hora)
  belongs_to :package
  #validates_formatting_of :link, using: :url
  acts_as_votable 


end
