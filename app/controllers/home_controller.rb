class HomeController < ApplicationController
  def index
    @videos = Video.all.sort_by(&:id)
  end

  def play
    @video = Video.find(params[:id])
  end
  
end
