# frozen_string_literal: true

class PagesController < ApplicationController
  require 'get_url.rb'
  def home
    unless params[:short_url].nil?
      @original_url, @shorten_url = GetUrl.new(params[:short_url]).perform(request.host_with_port)
    end
  end
end
