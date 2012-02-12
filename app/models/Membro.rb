class Membro
  include Mongoid::Document

  field :nome
  field :email
  field :password_hash
  field :matricula
  field :tipo
  field :admin
  field :registro
  field :status

end

