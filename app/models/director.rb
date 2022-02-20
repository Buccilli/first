class Director < ApplicationRecord
  # Direct associations

  has_many   :roles,
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end
end
