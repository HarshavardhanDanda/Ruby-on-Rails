class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def domain 
    #email will equal to harsha@spacex.com
    email.split('@').last
  end

  def company 
    #email will equal to harsha@spacex.com
    Company.find_by(domain: self.domain)
  end

end
