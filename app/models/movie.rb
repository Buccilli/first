class Movie < ApplicationRecord
  # Direct associations

  has_many   :actors,
             :dependent => :destroy

  has_many   :roles,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    title
  end

end
