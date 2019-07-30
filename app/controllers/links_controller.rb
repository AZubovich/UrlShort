class LinksController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    validator = ValidUrl.new(params[:url])
    unless validator.invalid?
      @short = GenerateUrl.new.perform
      RedisBase.instance.set(@short, params[:url])
      redirect_to root_path(short_url: @short)
    else
      flash[:error] = 'This string is not a URL'
      redirect_to root_path
    end
  end

  def redirect
    shorten_url = params[:short_url]
    @link = shorten_url.split('/')[3]
    redirect_to RedisBase.instance.get(@link)
  end
end
