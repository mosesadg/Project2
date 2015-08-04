class VideosController < ApplicationController
  def index
    
    @videos = Video.all.order(:likes).reverse

    end

    def show
    @video = Video.find(params[:id])
  end

end
