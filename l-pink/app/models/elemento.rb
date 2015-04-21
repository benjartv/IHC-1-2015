class Elemento < ActiveRecord::Base

	self.primary_key = :id


	  validates :tipoElemento_id, presence: true
      validates :tema_id, presence: true
      validates :elemento_correlativo, presence: true
      validates :elemento_descripcion, presence: true
      validates :elemento_fechaInicio, presence: true
      validates :elemento_fechaFinal, presence: true


end
