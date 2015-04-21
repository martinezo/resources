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
      when 0 # Cancelado
        'warning'
      when 1 # Enviado
        'danger'
      when 2 # Recibido
        'info'
      when 3 # Confirmado
        'info'
      when 4 # Efectuado
        'success'
    end
  end


end
