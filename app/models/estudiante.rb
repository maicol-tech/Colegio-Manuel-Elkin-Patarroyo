class Estudiante < ApplicationRecord
    has_many :anotaciones,dependent: :destroy
end
