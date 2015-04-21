class TipoElemento < ActiveRecord::Base

	self.primary_key = :id

	validates :tipoElemento_nombre, presence: true

end
