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
  has_attached_file :avatar, styles: {thumb: "100x100", medium: "300x300"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: "/\Aimage\/.*\Z/"
  has_attached_file :cover, styles: {thumb: "400x300", medium: "800x600"}, default_url: "/images/:style/missing_cover.jpg"
  validates_attachment_content_type :cover, content_type: "/\Aimage\/.*\Z/"
end
