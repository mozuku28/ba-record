class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.search(search)
    if search
     Admin.where(['email LIKE ?', "%#{search}%"])
    else
     Admin.all
    end
  end

end
