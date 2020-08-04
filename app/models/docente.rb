class Docente < ApplicationRecord
  has_many :materias, dependent: :destroy
end
