class ImagesController < ApplicationController
  def new
    @option = params[:option]
    @image = Image.new
  end
  
  def create
    @option = params[:option]
    @image = Image.new(permit_image)
    if @image[:image_file].blank?
      flash[:error] = "Error! You must provide an image."
    elsif @image[:video_id].blank?
      flash[:error] = "Error! You must provide a video_id."
    elsif @image[:title].blank?
      flash[:error] = "Error! You must provide a title."
    else
      if @image.save
        flash[:success] = "Success"
      else
        flash[:error] = @image.errors.full_messasges
      end
    end
    redirect_to new_image_path(:controller => "image", :action => "new", :option => @option)
  end
  
  def destroy
    @option = params[:option]
    if !params[:video_id].blank?
      if Image.where(video_id: params[:video_id]).destroy_all
        flash[:success] = "Success"
      else
        flash[:error] = @image.errors.full_messasges
      end
    elsif !params[:title].blank?
      if Image.where(title: params[:title]).destroy_all
        flash[:success] = "Success"
      else
        flash[:error] = @image.errors.full_messasges
      end
    end
  end

  def show
    @option = params[:option]
    @images = Image.where(video_id: params["video_id"])
  end
  
  def showAll
    @option = params[:option]
    @images = Image.all
  end
  
  private
    def permit_image
      params.require(:image).permit(:image_file, :video_id, :title, :description)
    end
end