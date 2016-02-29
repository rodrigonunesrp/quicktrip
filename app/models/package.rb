class Package < ActiveRecord::Base
  belongs_to :package_type
  validates_formatting_of :link, using: :url
end
