class UpdateMessage < ActiveRecord::Migration[5.0]
  def change
    execute("UPDATE resources SET message = 'Seminario parte 2'")
  end
end
