class User < ActiveRecord::Base

  validates :email, presence: true, uniqueness: { case_sensitive: false }, email: true

  def self.find_by_email(email)
    where(['lower(email) = lower(?)', email]).first
  end
end
