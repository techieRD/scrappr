class HomeController < ApplicationController
    
    def index
    @users = User.all
    @items = Item.all

	    @hash = Gmaps4rails.build_markers(@items) do |item, marker|
	      marker.lat item.latitude
	      marker.lng item.longitude
	      marker.infowindow item.description
	    end
	  end

  def about
  
  end


end
