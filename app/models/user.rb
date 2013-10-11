class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable,
    :trackable, :validatable, :lockable, :registerable
  has_many :posts
  paginates_per 10

  before_save :prepare_display_name

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

  def prepare_display_name
    self.display_name = if self.display_name.gsub(/[[:space:]]/, '').blank? && !"#{self.first_name} #{self.last_name}".gsub(/[[:space:]]/, '').blank?
                          "#{self.first_name} #{self.last_name}"
                        else
                          self.email.gsub(/(.*)@.+/, '\1')
                        end
  end
end
