class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :year, :date
  attribute :director_id, :integer

  # Direct associations

  has_many   :actors

  has_many   :roles

  # Indirect associations
end
