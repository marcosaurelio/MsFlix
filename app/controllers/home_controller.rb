class HomeController < ApplicationController
  def index
    @videos = Video.all
  end

  def play
    @video = Video.find(params[:id])
  end
  
end
