class HousesController < ApplicationController
  def index
    @houses = House.all # SELECT * FROM houses;
  end

  # Rails automatically loads the associated view:
  # app/views/houses/index.html.erb.
  # All @instance vars are shared with view.

  def show
  end
end
