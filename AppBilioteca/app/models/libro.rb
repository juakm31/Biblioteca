class Libro < ApplicationRecord
  /validates :cod_libro, presence: true
  validates :nombre, presence: true/
  belongs_to :autor
end
