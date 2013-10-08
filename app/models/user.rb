class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable,
    :trackable, :validatable, :lockable, :registerable
  has_many :posts
  paginates_per 10

  def display_name
    if read_attribute(:display_name).blank?
      "#{first_name} #{last_name}"
    else
      read_attribute(:display_name)
    end
  end

  def to_s
    display_name
  end
end
