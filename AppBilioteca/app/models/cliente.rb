class Cliente < ApplicationRecord
    /validates :cod_cliente, presence: true
    validates :nombre, presence: true
    validates :telefono, presense: true/
    has_many :prestamos
end
