class Personagem < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" },
                            default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
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
