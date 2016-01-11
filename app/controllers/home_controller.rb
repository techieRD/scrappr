class HomeController < ApplicationController
    
    def index
    @users = User.all
    @items = Item.all

	    @hash = Gmaps4rails.build_markers(@items) do |item, marker|

	      item_link = view_context.link_to item.name, item_path(item)
	      
	      marker.lat item.latitude
	      marker.lng item.longitude
	      marker.infowindow "<div class = 'scrapprbox'> <u>#{item_link}</u><br><i>#{item.description}</i></div>"
	    end
	  end

  def about
  
  end

  def gmaps4rails_infowindow
     
  end

end
