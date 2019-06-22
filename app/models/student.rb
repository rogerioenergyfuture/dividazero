class Student < ApplicationRecord
  belongs_to :responsible
  enum status: [ :'ativo', :'inativo']
end
