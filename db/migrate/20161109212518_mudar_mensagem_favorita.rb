class MudarMensagemFavorita < ActiveRecord::Migration[5.0]
  def change
    execute("UPDATE resources SET message = 'MFDS é show!'")
  end
end
