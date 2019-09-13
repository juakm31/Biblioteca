class Autor < ApplicationRecord
    /validates :cod_autor, presence: true
    validates :nombre, presence: true/
    has_many :libros
end
