class LinksController < ApplicationController 
   skip_before_action :verify_authenticity_token
   def create
     @link = Link.new
     @link.url = params[:url]
     if @link.save
       redirect_to show_path(@link.id)
     else
       redirect_to root_path
     end 
   end
   def show
      @link= Link.find(params[:id])
      host = request.host_with_port
      @original_url = @link.url
      @shorten_url = host + '/' + @link.short_url
   end
end
