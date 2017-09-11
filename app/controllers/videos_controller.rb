class VideosController < ApplicationController
  before_action :set_video, only: [:show]
  def index
    @videos = Video.all.with_views.page params[:page]

  end

  def show
    @users = @video.users.page params[:page]
    @histogram = @video.users_videos.select("strftime('%Y-%m-%d', created_at) as date, count(*) as views").group("1")
  end

  private
  def set_video
    @video = Video.find(params[:id])
  end
end
