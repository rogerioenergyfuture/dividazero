class Team < ApplicationRecord
  belongs_to :teacher
  enum status: [ :'ativo', :'inativo']
  enum year: [ :'2019', :'2020',:'2021',:'2022']
  enum level: [ :'L1', :'L2',:'L3']
  monetize :value_cents
end
