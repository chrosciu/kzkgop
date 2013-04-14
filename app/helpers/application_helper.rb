module ApplicationHelper
  def departure_class(departure)
    klass = 'btn '
    klass += departure.future? ? 'btn-success' : 'btn-danger'
  end
end
