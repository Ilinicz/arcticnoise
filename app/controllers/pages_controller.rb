class PagesController < ApplicationController
  include HighVoltage::StaticPage
  before_action :get_video_by_category
  

  private
  def get_video_by_category
    #@videos = Video.none
    category = params[:id][6..-1]
    @videos = Video.where(category: category)
  end

end
