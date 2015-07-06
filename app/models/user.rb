#
class User < ActiveRecord::Base
  has_secure_password

  validates :email, uniqueness: true

  def editor?
    role == 'editor'
  end

  def admin?
    role == 'admin'
  end
end
