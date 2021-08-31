class Maquina < ApplicationRecord
	validates :nome, length: {in: 2..80}
	validates :descricao, length: {maximum: 1000}
	validates :mesesdegarantia, numericality: {only_integer: true}
	validate :datadecomprapassado
	
	def datadecomprapassado
		datadecompra.strftime("%m/%d/%Y")
		if datadecompra.present? && datadecompra>Date.today
			errors.add(:datadecompra, "Deve ser uma data no passado.")
		end
	end
end
