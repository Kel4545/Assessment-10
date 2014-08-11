class GifsController < ApplicationController

  def index
    @gif = Gif.order(:url)
  end

  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(
      url: params[:gif][:url],
      title: params[:gif][:title]
    )
    if @gif.save
      flash[:notice] ="Gif was created successfully!"
      redirect_to root_path
    else
      render :new
    end
  end
end