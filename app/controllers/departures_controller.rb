class DeparturesController < ApplicationController
  def index
    @all_scoped_departures = Departure.fetch_all_scoped_departures(params[:stop_id], params[:direction_ids] || [])
  end
end
