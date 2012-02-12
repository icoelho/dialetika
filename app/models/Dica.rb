class Dica
  include Mongoid::Document

  field :membro_id
  field :email
  field :texto
  field :registro
  field :publico

end
