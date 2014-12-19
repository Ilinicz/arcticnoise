class Photo < ActiveRecord::Base

  CATEGORIES = %w{portrait reportage object city scene animals sport}
  validates :url, presence: true
  validates :category, presence: true, inclusion: CATEGORIES

end
