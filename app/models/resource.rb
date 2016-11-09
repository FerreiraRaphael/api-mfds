class Resource < ApplicationRecord
  validates :name, :message, presence: true
  validate :my_favorite_message?

  private

  def my_favorite_message?
    message == 'METODO E FERRAMENTAS DE DESENVOLVIMENTO DE SOFTWARE é show!'
  end
end
