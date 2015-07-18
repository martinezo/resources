class Catalogs::Status < ActiveRecord::Base

  def self.search(search)
    if search
      where("name LIKE ? OR translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

  # According to bootstrap contextual classes
  def css_class
    case id
      when 0 # Cancelado - yellow
        'canceled'
      when 1 # Enviado - red
        'sent'
      when 2 # Recibido - blue
        'received'
      when 3 # Confirmado - gray
        'confirmed'
      when 4 # Efectuado - green
        'concluded'
    end
  end


end
