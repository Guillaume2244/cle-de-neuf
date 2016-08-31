class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  skip_after_action :verify_authorized, only: [ :home ]

  def home
    @garages = Garage.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@garages) do |garage, marker|
      marker.lat garage.latitude
      marker.lng garage.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
end
