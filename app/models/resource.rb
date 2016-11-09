class Resource < ApplicationRecord
  validates :name, :message, presence: true
  validate :my_favorite_message?

  private

  def my_favorite_message?
    message == 'MDFS é show'
  end
end
