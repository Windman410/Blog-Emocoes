class Artigo < ApplicationRecord
	has_many :comentario, dependent: :destroy
	validates :titulo, presence: true,
                    length: { minimum: 5 }
end
