class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #Validations
  validates :name, presence: true,length: {in: 5..20}
  validates :lastName, presence: true, length: {in: 5..20}
  validates :email, uniqueness: true, length: {in: 5..50}
  # Publications
  has_many :posts
end
