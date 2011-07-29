class User < ActiveRecord::Base
	attr_accessible :email, :password, :password_confirmation, :name
	has_many :articles

	has_secure_password #Only in rails 3.1+

	validates :password, :presence => {:on => :create}
	validates :email, :presence => {:on => :create}

	before_create { generate_token(:auth_token)}

  def generate_token(column)
	begin
		self[column] = SecureRandom.urlsafe_base64
	end while User.exists?(column => self[column])
  end
end
