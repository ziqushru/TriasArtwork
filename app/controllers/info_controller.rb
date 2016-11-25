class InfoController < ApplicationController
  def home
  end
  
  def bio
    @option = params[:option]
  end
  def contact_us
    @option = params[:option]
  end
end
