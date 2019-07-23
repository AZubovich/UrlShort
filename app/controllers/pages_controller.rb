class PagesController < ApplicationController
  require 'get_url.rb'
  def home
    unless params[:short_url].nil?
      obj = GetUrl.new(params[:short_url])
      @original_url = obj.old_url
      @shorten_url = obj.get_short_url request.host_with_port
    end
  end
end