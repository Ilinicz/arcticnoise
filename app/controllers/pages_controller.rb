class PagesController < ApplicationController
  include HighVoltage::StaticPage
  
  
    #before_action :get_video_by_category, except: :get_category

  before_action :get_category_and_data



  def get_video(category)
    @videos = Video.where(category: category)
  end

  def get_photo(category)
    @photos = Photo.where(category: category)
  end

  def get_category_and_data
    @category = params[:id][6..-1]
      get_video(@category)

      get_photo(@category)

  end

end
