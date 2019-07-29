class Company < ApplicationRecord
  belongs_to :user
  enum status: [ :'ativo', :'inativo'] 
  enum kind: [ :'escola', :'condomínio',:'comércio'] 
  enum predefaulting: [ :'sim', :'não'] 
  enum posdefaulting: [ :'S', :'N'] 
end
