class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  NEIGHBOURHOODS = ["Eixample", "Sant Marti", "Gracia", "Ciutat Vella", "Sants-Montjuïc", "Sarrià-Sant Gervasi", "Les Corts", "Horta-Guinardó", "Nou Barris", "Sant Andreu"].sort
  CITIES = ["Barcelona"]
end
