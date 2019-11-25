class Song < ApplicationRecord
  validates :title, presence: true
  validates :artist_name, presence: true
  validates :released, inclusion: {in: [true, false]}
  
  with_options if: :released do |s|
    s.validates :release_year, presence: true
    s.validates :release_year, 
  
end