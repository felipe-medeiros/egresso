class Conclusion < ApplicationRecord
	has_many :students

	def nome
		ano + semestre
	end
end
