class Company < ApplicationRecord
  validates :name, presence: true 
  validates :domain, presence:true 
end
