class Video < ActiveRecord::Base

  CATEGORIES = %w{portrait music promotion sport social}
  validates :url, presence: true
  validates :category, presence: true, inclusion: CATEGORIES


end
