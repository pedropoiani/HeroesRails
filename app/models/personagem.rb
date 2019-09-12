class Personagem < ApplicationRecord
  validates_presence_of :nome, :forca, :resistencia, :agilidade, :destreza
  has_many :poderes

  def situacao
    if forca == 10
      return 'Super Forte'
    else
      return 'Normal'
    end
  end

  def cor
    return "table-danger" if forca > 5
  end
end
