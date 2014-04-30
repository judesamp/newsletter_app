class Event < ActiveRecord::Base
  belongs_to :posts
  has_many :newsletter_issues, through: :posts
end
