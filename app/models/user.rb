class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
         
  enum status: [ :'ativo', :'inativo'] 
  enum kind: [ :'adm',:'company' ]
  enum role: [ :'admin',:'normal_user' ]
end
