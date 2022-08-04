class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {minimum: 3, maximum:100}
  validates :description, presence: true, length: {minimum: 10, maximum:300}
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  scope :with_long_title, -> { where("LENGTH(title) > 9") }
end