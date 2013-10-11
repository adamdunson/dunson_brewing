class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable,
    :trackable, :validatable, :lockable, :registerable
  has_many :posts
  paginates_per 10

  before_save :prepare_fields

  attr_accessor :login

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

  def real_name
    "#{self.first_name} #{self.last_name}".gsub(/^[[:space:]]*(.+)[[:space:]]*$/, '\1')
  end

  def about_me
    if read_attribute(:about_me).nil?
      "Nothing yet."
    else
      read_attribute(:about_me)
    end
  end

  def to_s
    display_name
  end

  private

  def prepare_fields
    # username
    if self.username.nil? || self.username.gsub(/^[[:space:]]*(.+)[[:space:]]*$/, '\1').blank?
      self.username = self.email.gsub(/(.*)@.+/, '\1')
    end

    # display_name
    display_names = [
      self.username,
      self.real_name
    ]
    display_names.each do |display_name|
      self.display_name = display_name if self.display_name.nil? || self.display_name.gsub(/^[[:space:]]*(.+)[[:space:]]*$/, '\1').blank?
    end
  end
end
