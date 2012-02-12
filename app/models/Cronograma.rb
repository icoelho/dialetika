class Cronograma
  include Mongoid::Document

  field :disciplina_id
  field :disciplina_nome
  field :aula
  field :local
  field :conteudo

end
