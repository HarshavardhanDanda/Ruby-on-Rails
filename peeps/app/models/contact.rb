class Contact < ActiveRecord::Base
  has_many :phone_numbers

  ### Validations
  validates :name_first, presence: true
  validates :name_last, presence: true

  #scope :with_long_title, -> { where("LENGTH(title) > 9") }
  scope :first_name_like, ->(val) { where("contacts.name_first LIKE ?", "%#{val}%") }

  scope :last_name_like, ->(val) { where("contacts.name_last LIKE ?", "%#{val}%") }

end