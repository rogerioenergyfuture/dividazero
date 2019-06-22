class Teacher < ApplicationRecord
  enum status: [ :'ativo', :'inativo']    
  belongs_to :user
end
