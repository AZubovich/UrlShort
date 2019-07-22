class LinksController < ApplicationController 
   skip_before_action :verify_authenticity_token
   def create
     @link = Link.new
     @link.url = params[:url]
     if @link.save
        # loclhost/show?link=2
       redirect_to root_path({link_id: @link.id})
     else
      flash[:error] = 'This string is not a URL'
      redirect_to root_path
     end 
   end

   def redirect
      shorten_url = params[:short_url]
      @bink = shorten_url.split('/')[3]
      source = Link.find_by(short_url: shorten_url.split('/')[3] )
      redirect_to source.url
   end
   
end
