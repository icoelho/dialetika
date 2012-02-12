class Disciplina
  include Mongoid::Document

  field :codigo
  field :nome
  field :objetivo
  field :descricao
  field :docente

end
