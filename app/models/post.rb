class Post < ActiveRecord::Base
  belongs_to :newsletter_issue
  belongs_to :event
  belongs_to :article
end
