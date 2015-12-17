class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authenticate_user!
  protect_from_forgery with: :exception

  def index
    @users = User.all
    @items = Item.all

    @hash = Gmaps4rails.build_markers(@items) do |item, marker|
      marker.lat item.latitude
      marker.lng item.longitude
      marker.infowindow item.description
    end
  end

end

