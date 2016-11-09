class MudarMensagemFavoritaSemSigla < ActiveRecord::Migration[5.0]
  def change
    execute("UPDATE resources SET message = 'METODO E FERRAMENTAS DE DESENVOLVIMENTO DE SOFTWARE é show!'")
  end
end
