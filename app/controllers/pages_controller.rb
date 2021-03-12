class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  	@gif = Gif.new
  	@gifs = Gif.all
  end
end
