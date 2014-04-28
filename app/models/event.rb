class Event < ActiveRecord::Base
  has_many :posts
  has_many :newsletter_issues, through: :posts
end
