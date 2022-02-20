class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :movie_id, :integer

  # Direct associations

  has_many   :roles

  belongs_to :movie

  # Indirect associations
end
