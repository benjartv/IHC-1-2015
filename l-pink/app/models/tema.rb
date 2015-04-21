class Tema < ActiveRecord::Base

	self.primary_key = :id

	validates :acta_id, presence: true
    validates :tema_nombre, presence: true
    validates :tema_descripcion, presence: true
    validates :tema_estado, presence: true
    validates :tema_correlativo, presence: true

end
