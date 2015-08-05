class VideosController < ApplicationController

  def index
    # @videos = Video.all.order(:likes).reverse
    @videos = Video.all
      if params[:search]
        @videos = Video.search(params[:search]).order("created_at DESC")
      else
        @videos = Video.all.order('created_at DESC')
      end
    end

    def show
    @video = Video.find(params[:id])
  end

    def new
    @video = Video.new
    end


    def create

    @video = Video.create!(video_params)
    @video.update(date_created: Time.now.strftime("%B %d, %Y") )
    
    redirect_to (video_path(@video))

  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])

    @video.update(video_params)


      redirect_to video_path(@video)
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_path

  end

def upvote
  @video = Video.find(params[:id])
  @video.upvote_by current_user
  redirect_to @videos_path

end

private
def video_params
  params.require(:video).permit(:subject, :author, :likes, :link_url)
end


end
