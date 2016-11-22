class WeddingController < ApplicationController
  def gallery
    @info = Vimeo::Simple::Album.info("4267778")
    @videos = Vimeo::Simple::Album.videos("4267778")
  end
  
  def show
    @video_id = params[:video_id]
    @description = params[:description]
  end

  def services
  end
end
