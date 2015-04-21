class Acta < ActiveRecord::Base

	self.primary_key = :id

	validates :proyecto_id, presence: true
    validates :acta_fecha, presence: true
    validates :acta_correlativo, presence: true

end
