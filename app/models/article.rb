class Article < ActiveRecord::Base
  belongs_to :post
  has_many :newsletter_issues, through: :posts
end
