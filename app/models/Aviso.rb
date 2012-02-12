class Aviso
  include Mongoid::Document

  field :titulo
  field :texto
  field :registro
  field :publico
  field :status

end
