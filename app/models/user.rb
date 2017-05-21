class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { medium: "100x100>", thumb: "50x50>" }, default_url: '/assets/noavatar.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  has_many :blogs
  has_many :messages
  has_many :auth_providers, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_and_belongs_to_many :liked_blogs, class_name: 'Blog'
  # has_secure_password
  acts_as_liker
  acts_as_follower
  before_validation do
    if self.password.blank?
      self.password = Devise.friendly_token
    end
  end
  enum role: [:guest, :user, :admin, :super_admin], _prefix: :role

  after_initialize do
    self.role ||= User.roles[:user]
  end
  # def editor?
  #   self.role == 'editor'
  # end
  #
  # def admin?
  #   self.role == 'admin'
  # end

end
