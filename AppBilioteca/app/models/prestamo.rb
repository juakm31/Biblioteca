class Prestamo < ApplicationRecord
  /scope :created_before, ->(time) { where("created_at < ?", time) if time.present? }/
  belongs_to :cliente
  belongs_to :libro

  
end

/Article.created_before(Time.zone.now)/


