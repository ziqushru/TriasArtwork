class GalleryController < ApplicationController
    def about
        @option = params[:option]
    end
    
    def showAll
        @length = params["length"]
        @option = params[:option]
        if @option == "christening"
            @info = Vimeo::Simple::Album.info("4267783")
            @videos = Vimeo::Simple::Album.videos("4267783")
        elsif @option == "wedding"
            @info = Vimeo::Simple::Album.info("4267778")
            @videos = Vimeo::Simple::Album.videos("4267778")
        elsif @option == "other"
            @info = Vimeo::Simple::Album.info("4267780")
            @videos = Vimeo::Simple::Album.videos("4267780")
        end
    end
    
    def show
        @option = params[:option]
        @video_id = params[:video_id]
        @images = Image.where(video_id: params[:video_id])
    end
end