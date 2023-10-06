class HousesController < ApplicationController
  def index
    @houses = House.all # SELECT * FROM houses;
  end

  # Rails automatically loads the associated view:
  # app/views/houses/index.html.erb.
  # All @instance vars is shared with view.

  # GET / houses/:id
  def show
    @house = House.find(params[:id])
  end
   # Rails automatically loads the associated view:
  # app/views/houses/show.html.erb.
  # All @house variable is shared with view.
end
