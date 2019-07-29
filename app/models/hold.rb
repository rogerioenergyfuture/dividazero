class Hold < ApplicationRecord
  belongs_to :company
  enum status: [ :'ativo', :'inativo'] 
  enum predefaulting: [ :'sim', :'não']
end
