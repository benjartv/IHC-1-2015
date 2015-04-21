class Proyecto < ActiveRecord::Base

	self.primary_key = :id
	
	validates :proyecto_nombre, presence: true
	validates :proyecto_descripcion, presence: true
    validates :proyecto_inicio, presence: true
    validates :proyecto_final, presence: true





end
