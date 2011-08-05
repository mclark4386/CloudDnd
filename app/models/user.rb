class User < ActiveRecord::Base
	attr_accessible :email, :password, :password_confirmation, :name
	has_many :articles

	has_secure_password #Only in rails 3.1+

	validates :password, :presence => {:on => :create}
	validates :email, :presence => {:on => :create}, :uniqueness => :true

	before_create { generate_token(:auth_token)}

  def send_password_reset
	generate_token(:password_reset_token)
	self.password_reset_sent_at = Time.zone.now
	save!
	UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
	begin
		self[column] = SecureRandom.urlsafe_base64
	end while User.exists?(column => self[column])
  end
end
