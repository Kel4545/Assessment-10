class HomeController < ApplicationController
  def index
  @gif = @gif = Gif.order(:url)

  end
    end
