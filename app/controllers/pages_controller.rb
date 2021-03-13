class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  	@gif = Gif.new
  	@termo = params[:pesquisa]
  	@gifs = Gif.tagged_with(["#{params[:pesquisa]}"])
  	@mostuseds = ActsAsTaggableOn::Tag.most_used(10)
  	@gifsall = Gif.all
  end
end
