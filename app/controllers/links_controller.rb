class LinksController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @link = Link.new
    @link.url = params[:url]
    if @link.save
      $redis.set(@link.short_url, @link.url)
      redirect_to root_path({ short_url: @link.short_url })
    else
      flash[:error] = 'This string is not a URL'
      redirect_to root_path
    end
  end

  def redirect
    shorten_url = params[:short_url]
    @link = shorten_url.split('/')[3]
    redirect_to $redis.get(@link)
  end
end
