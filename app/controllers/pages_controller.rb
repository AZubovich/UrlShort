class PagesController < ApplicationController 
  
  def home 
    unless params[:link_id].nil?
      @link = Link.find(params[:link_id])
      host = request.host_with_port
      @original_url = @link.url
      @shorten_url = 'http://' + host + '/' + @link.short_url
     end  
  end 

end
