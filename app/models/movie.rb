class Movie < ApplicationRecord
  include Filterable
  
  default_scope { order('title') } 

  scope :title, -> (title) { where("title like ?", "%#{title}%") }
  scope :rating, -> (rating) { where("rating like ?", "#{rating}") }
  scope :genre, -> (genre) { where("genre like ?", "#{genre}") }
  scope :lead, -> (lead) { where("lead like ?", "%#{lead}%") }
  scope :director, -> (director) { where("director like ?", "%#{director}%") }
  scope :medium, -> (medium) { where("medium like ?", "%#{medium}%") }

end
