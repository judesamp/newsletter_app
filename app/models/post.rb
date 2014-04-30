class Post < ActiveRecord::Base
  belongs_to :newsletter_issue
  has_many :events
  has_many :articles
end
