class Organization < ActiveRecord::Base
  validates_presence_of :name
  validates :name, length: { minimum: 4 }
  validates_uniqueness_of :email
  has_many :newsletter_issues
end


