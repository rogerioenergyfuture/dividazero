class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
         
  enum status: [ :'ativo', :'inativo'] 
  enum kind: [ :'adm',:'teacher' ]
  enum role: [ :'admin',:'normal_user' ]
end
