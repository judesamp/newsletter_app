class NewsletterIssue < ActiveRecord::Base
  validates_presence_of :title #to use as a draft name
  validate :publish_on_cannot_be_in_the_past
  validate :number, numericality: true, :allow_nil => true


  belongs_to :organization
  has_many :posts
  has_many :events, through: :posts
  has_many :articles, through: :posts


  def publish_on_cannot_be_in_the_past
    errors.add(:publish_on, "can't be in the past") if 
      !publish_on.blank? and publish_on < Date.today
  end

end
